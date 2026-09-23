require 'net/http'
require 'uri'
require 'json'

def post_json(path, body)
  uri = URI("#{E2E.base}#{path}")
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = uri.scheme == 'https'
  req = Net::HTTP::Post.new(uri.path)
  req['Authorization'] = "Bearer #{E2E.key}"
  req['Content-Type'] = 'application/json'
  req.body = JSON.generate(body)
  res = http.request(req)
  [res.code.to_i, JSON.parse(res.body)]
end

RSpec.describe 'Errors' do
  it '401 chave invalida' do
    uri = URI("#{E2E.base}/v1/usage/log?page=1&limit=1")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = uri.scheme == 'https'
    req = Net::HTTP::Get.new(uri.request_uri)
    req['Authorization'] = 'Bearer fai_chave_invalida_000'
    res = http.request(req)
    E2ELogger.log('errors_401', 'GET', '/v1/usage/log', nil, JSON.parse(res.body), "HTTP #{res.code}", res.code.to_i)
    expect(res.code.to_i).to eq(401)
  end

  it '422 diagnostic missing' do
    body = { language: 'pt-BR', dialog: 'Speaker 1: ola' }
    st, out = post_json('/v1/analyze/diagnostic', body)
    E2ELogger.log('errors_422_diag', 'POST', '/v1/analyze/diagnostic', body, out, "HTTP #{st}", st)
    expect(st).to eq(422)
  end

  it '422 auditoria missing' do
    body = { language: 'pt-BR', dialog: 'Speaker 1: ola' }
    st, out = post_json('/v1/analyze/auditoriaRisco', body)
    E2ELogger.log('errors_422_aud', 'POST', '/v1/analyze/auditoriaRisco', body, out, "HTTP #{st}", st)
    expect(st).to eq(422)
  end

  it '422 extra forbidden' do
    body = { dialog: 'Speaker 1: ola', language: 'pt-BR', response_language: 'pt-BR', duration_seconds: 10, threshold_multiplier: 1 }
    st, out = post_json('/v1/analyze/auditoriaRisco', body)
    E2ELogger.log('errors_422_extra', 'POST', '/v1/analyze/auditoriaRisco', body, out, "HTTP #{st}", st)
    expect(st).to eq(422)
  end

  it '400 auditoria language' do
    body = { dialog: 'Speaker 1: ola', language: 'xx', response_language: 'pt-BR', duration_seconds: 10 }
    st, out = post_json('/v1/analyze/auditoriaRisco', body)
    E2ELogger.log('errors_400_aud', 'POST', '/v1/analyze/auditoriaRisco', body, out, "HTTP #{st}", st)
    expect(st).to eq(400)
  end

  it '400 diagnostic language' do
    body = { dialog: 'Speaker 1: ola', language: 'xx', duration_seconds: 10 }
    st, out = post_json('/v1/analyze/diagnostic', body)
    E2ELogger.log('errors_400_diag', 'POST', '/v1/analyze/diagnostic', body, out, "HTTP #{st}", st)
    expect(st).to eq(400)
  end
end