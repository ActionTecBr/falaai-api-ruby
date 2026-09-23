require 'json'

ROOT = File.expand_path('../../../..', __dir__)

RSpec.describe 'Contract' do
  EXPECTED = [
    'POST /v1/audio/transcriptions', 'POST /v1/analyze/diagnostic', 'POST /v1/analyze/auditoriaRisco',
    'GET /v1/usage/log', 'GET /v1/usage/by-key', 'GET /v1/webhooks', 'POST /v1/webhooks',
    'PUT /v1/webhooks/{webhook_id}', 'DELETE /v1/webhooks/{webhook_id}',
    'GET /v1/email-alerts', 'POST /v1/email-alerts', 'PUT /v1/email-alerts/{alert_id}',
    'DELETE /v1/email-alerts/{alert_id}', 'GET /api/version', 'GET /v1/health', 'HEAD /v1/health'
  ].freeze

  it 'openapi tem as operacoes esperadas' do
    spec = JSON.parse(File.read(File.join(ROOT, 'openapi.json')))
    ops = []
    spec['paths'].each do |path, methods|
      methods.each_key { |m| ops << "#{m.upcase} #{path}" if %w[get post put delete patch head].include?(m) }
    end
    expect(ops.sort).to eq(EXPECTED.sort)
  end

  it 'SDK cobre 100% das operacoes' do
    src = Dir.glob(File.join(ROOT, 'sdks/ruby/lib/falaai-api/api/*.rb')).map { |f| File.read(f) }.join
    ['/v1/usage/log', '/v1/webhooks', '/v1/email-alerts', '/api/version', '/v1/health', '/v1/analyze/auditoriaRisco'].each do |p|
      expect(src).to include(p)
    end
  end

  it 'exemplos existem' do
    %w[
      curl/transcribe.sh python/transcribe.py nodejs/transcribe.js
      curl/auditoria_risco.sh python/auditoria_risco.py nodejs/auditoria_risco.js
      curl/diagnostic.sh python/diagnostic.py nodejs/diagnostic.js
    ].each do |f|
      expect(File.exist?(File.join(ROOT, 'app/static/examples', f))).to be(true)
    end
  end
end