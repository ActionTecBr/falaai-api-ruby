RSpec.describe 'Read' do
  it 'GET /v1/health' do
    api = FalaAI::HealthApi.new(E2E.client(E2E.base))
    p, status = api.health_check_with_http_info
    E2ELogger.log('health_get', 'GET', '/v1/health', nil, p, "HTTP #{status}", status)
    expect(status).to eq(200)
    expect(p.status).to eq('ok')
    expect(p.version).to be_a(String)
    expect(p.version).not_to be_empty
    expect(p.uptime_seconds).to be_a(Integer)
    expect(p.uptime_seconds).to be >= 0
    expect([true, false]).to include(p.database)
    expect(p.phase).to be_a(String)
    expect(p.phase).not_to be_empty
    expect(p.launch_date).to be_a(String)
    expect(p.launch_date).not_to be_empty
  end

  it 'HEAD /v1/health' do
    uri = URI("#{E2E.base}/v1/health")
    res = Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == 'https') { |http| http.head(uri.path) }
    E2ELogger.log('health_head', 'HEAD', '/v1/health', nil, { status: res.code.to_i }, "HTTP #{res.code}", res.code.to_i)
    expect(res.code.to_i).to eq(200)
  end

  it 'GET /api/version' do
    api = FalaAI::VersionApi.new(E2E.client(E2E.base))
    p, status = api.get_version_api_version_get_with_http_info
    E2ELogger.log('version', 'GET', '/api/version', nil, p, "HTTP #{status}", status)
    expect(status).to eq(200)
    expect(p.service).to eq('FalaAI API')
    expect(p.version).to be_a(String)
    expect(p.version).not_to be_empty
    expect(p.deploy_date).to be_a(String)
    expect(p.deploy_date).not_to be_empty
  end

  it 'GET /v1/usage/log' do
    api = FalaAI::UsageApi.new(E2E.client(E2E.base))
    p, status = api.get_usage_log_v1_usage_log_get_with_http_info(page: 1, limit: 5)
    E2ELogger.log('usage_log', 'GET', '/v1/usage/log', { page: 1, limit: 5 }, p, "HTTP #{status}", status)
    expect(status).to eq(200)
    expect(p.page).to eq(1)
    expect(p.limit).to eq(5)
    expect(p.data).to be_a(Array)
    p.data.each do |it|
      expect(it.id).to be_a(String)
      expect(it.id).not_to be_empty
      expect(it.endpoint).to be_a(String)
      expect(it.endpoint).not_to be_empty
      expect(it.credits_cost).to be_a(Integer)
      expect(it.status).to be_a(String)
      expect(it.status).not_to be_empty
      expect(it.errors_count).to be_a(Integer)
      expect(it.created_at).to be_a(String)
      expect(it.created_at).not_to be_empty
    end
  end

  it 'GET /v1/usage/by-key' do
    api = FalaAI::UsageApi.new(E2E.client(E2E.base))
    data, status = api.get_usage_by_key_v1_usage_by_key_get_with_http_info
    E2ELogger.log('usage_by_key', 'GET', '/v1/usage/by-key', nil, data, "HTTP #{status}", status)
    expect(status).to eq(200)
    expect(data).to be_a(Array)
    data.each do |it|
      expect(it.key_id).to be_a(String)
      expect(it.key_id).not_to be_empty
      expect(it.key_name).to be_a(String)
      expect(it.total_credits).to be_a(Integer)
      expect(it.request_count).to be_a(Integer)
    end
  end

  it 'GET /v1/webhooks' do
    api = FalaAI::WebhooksApi.new(E2E.client(E2E.base))
    p, status = api.list_webhooks_v1_webhooks_get_with_http_info(page: 1, limit: 5)
    E2ELogger.log('webhooks_list', 'GET', '/v1/webhooks', { page: 1, limit: 5 }, p, "HTTP #{status}", status)
    expect(status).to eq(200)
    expect(p.page).to eq(1)
    expect(p.limit).to eq(5)
    expect(p.data).to be_a(Array)
    p.data.each do |w|
      expect(w.id).to be_a(String)
      expect(w.id).not_to be_empty
      expect(w.user_id).to be_a(String)
      expect(w.user_id).not_to be_empty
      expect(w.name).to be_a(String)
      expect(w.url).to be_a(String)
      expect(w.url).not_to be_empty
      expect(w.secret).to be_a(String)
      expect(w.events).to be_a(Array)
      expect([true, false]).to include(w.active)
      expect([true, false]).to include(w.retry_enabled)
      expect(w.failure_count).to be_a(Integer)
      expect(w.created_at).to be_a(String)
      expect(w.created_at).not_to be_empty
      expect(w.updated_at).to be_a(String)
      expect(w.updated_at).not_to be_empty
    end
  end

  it 'GET /v1/email-alerts' do
    api = FalaAI::EmailAlertsApi.new(E2E.client(E2E.base))
    p, status = api.list_email_alerts_v1_email_alerts_get_with_http_info(page: 1, limit: 5)
    E2ELogger.log('email_alerts_list', 'GET', '/v1/email-alerts', { page: 1, limit: 5 }, p, "HTTP #{status}", status)
    expect(status).to eq(200)
    expect(p.page).to eq(1)
    expect(p.limit).to eq(5)
    expect(p.data).to be_a(Array)
    p.data.each do |a|
      expect(a.id).to be_a(String)
      expect(a.id).not_to be_empty
      expect(a.user_id).to be_a(String)
      expect(a.user_id).not_to be_empty
      expect(a.name).to be_a(String)
      expect(a.email).to be_a(String)
      expect(a.email).not_to be_empty
      expect(a.events).to be_a(Array)
      expect([true, false]).to include(a.active)
      expect(a.created_at).to be_a(String)
      expect(a.created_at).not_to be_empty
      expect(a.updated_at).to be_a(String)
      expect(a.updated_at).not_to be_empty
    end
  end
end