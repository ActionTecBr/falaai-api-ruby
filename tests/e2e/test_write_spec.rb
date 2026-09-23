RSpec.describe 'Write' do
  WNAME = 'E2E Test Webhook'
  WURL = 'https://e2e-falaai.invalid/hook'
  ANAME = 'E2E Test Alert'
  AEMAIL = 'e2e-test@falaai.invalid'
  EVENTS = ['credits.low', 'payment.failed'].freeze

  def assert_webhook(w, wid, name, active)
    expect(w.id).to eq(wid)
    expect(w.user_id).to be_a(String)
    expect(w.user_id).not_to be_empty
    expect(w.name).to eq(name)
    expect(w.url).to eq(WURL)
    expect(w.secret).to be_a(String)
    expect(w.secret).not_to be_empty
    expect(w.events).to be_a(Array)
    expect(w.events.length).to eq(2)
    expect(w.active).to be(active)
    expect([true, false]).to include(w.retry_enabled)
    expect(w.failure_count).to be_a(Integer)
    expect(w.created_at).to be_a(String)
    expect(w.created_at).not_to be_empty
    expect(w.updated_at).to be_a(String)
    expect(w.updated_at).not_to be_empty
  end

  def assert_alert(a, aid, name, active)
    expect(a.id).to eq(aid)
    expect(a.user_id).to be_a(String)
    expect(a.user_id).not_to be_empty
    expect(a.name).to eq(name)
    expect(a.email).to eq(AEMAIL)
    expect(a.events).to be_a(Array)
    expect(a.events.length).to eq(2)
    expect(a.active).to be(active)
    expect(a.created_at).to be_a(String)
    expect(a.created_at).not_to be_empty
    expect(a.updated_at).to be_a(String)
    expect(a.updated_at).not_to be_empty
  end

  def cleanup_webhooks(api)
    api.list_webhooks_v1_webhooks_get_with_http_info(page: 1, limit: 100)[0].data.each do |w|
      api.delete_webhook_v1_webhooks_webhook_id_delete_with_http_info(w.id) if w.url == WURL
    end
  end

  def cleanup_alerts(api)
    api.list_email_alerts_v1_email_alerts_get_with_http_info(page: 1, limit: 100)[0].data.each do |a|
      api.delete_email_alert_v1_email_alerts_alert_id_delete_with_http_info(a.id) if a.email == AEMAIL
    end
  end

  it 'webhooks CRUD' do
    api = FalaAI::WebhooksApi.new(E2E.client(E2E.base))
    cleanup_webhooks(api)

    body = FalaAI::CreateWebhookRequest.new(name: WNAME, url: WURL, events: EVENTS)
    c, cs = api.create_webhook_v1_webhooks_post_with_http_info(body)
    E2ELogger.log('webhooks_create', 'POST', '/v1/webhooks', body, c, "HTTP #{cs}", cs)
    expect(cs).to eq(200)
    wid = c.id
    assert_webhook(c, wid, WNAME, true)

    ub = FalaAI::UpdateWebhookRequest.new(name: "#{WNAME} (updated)", active: false)
    u, us = api.update_webhook_v1_webhooks_webhook_id_put_with_http_info(wid, ub)
    E2ELogger.log('webhooks_update', 'PUT', "/v1/webhooks/#{wid}", ub, u, "HTTP #{us}", us)
    expect(us).to eq(200)
    expect(u.message).to eq('updated')

    row = api.list_webhooks_v1_webhooks_get_with_http_info(page: 1, limit: 100)[0].data.find { |w| w.id == wid }
    expect(row).not_to be_nil
    assert_webhook(row, wid, "#{WNAME} (updated)", false)

    d, ds = api.delete_webhook_v1_webhooks_webhook_id_delete_with_http_info(wid)
    E2ELogger.log('webhooks_delete', 'DELETE', "/v1/webhooks/#{wid}", nil, d, "HTTP #{ds}", ds)
    expect(ds).to eq(200)
    expect(d.message).to eq('deleted')

    gone = api.list_webhooks_v1_webhooks_get_with_http_info(page: 1, limit: 100)[0].data.find { |w| w.id == wid }
    expect(gone).to be_nil
  end

  it 'email-alerts CRUD' do
    api = FalaAI::EmailAlertsApi.new(E2E.client(E2E.base))
    cleanup_alerts(api)

    body = FalaAI::CreateEmailAlertRequest.new(name: ANAME, email: AEMAIL, events: EVENTS)
    c, cs = api.create_email_alert_v1_email_alerts_post_with_http_info(body)
    E2ELogger.log('email_alerts_create', 'POST', '/v1/email-alerts', body, c, "HTTP #{cs}", cs)
    expect(cs).to eq(200)
    aid = c.id
    assert_alert(c, aid, ANAME, true)

    ub = FalaAI::UpdateEmailAlertRequest.new(name: "#{ANAME} (updated)", active: false)
    u, us = api.update_email_alert_v1_email_alerts_alert_id_put_with_http_info(aid, ub)
    E2ELogger.log('email_alerts_update', 'PUT', "/v1/email-alerts/#{aid}", ub, u, "HTTP #{us}", us)
    expect(us).to eq(200)
    expect(u.message).to eq('updated')

    row = api.list_email_alerts_v1_email_alerts_get_with_http_info(page: 1, limit: 100)[0].data.find { |a| a.id == aid }
    expect(row).not_to be_nil
    assert_alert(row, aid, "#{ANAME} (updated)", false)

    d, ds = api.delete_email_alert_v1_email_alerts_alert_id_delete_with_http_info(aid)
    E2ELogger.log('email_alerts_delete', 'DELETE', "/v1/email-alerts/#{aid}", nil, d, "HTTP #{ds}", ds)
    expect(ds).to eq(200)
    expect(d.message).to eq('deleted')

    gone = api.list_email_alerts_v1_email_alerts_get_with_http_info(page: 1, limit: 100)[0].data.find { |a| a.id == aid }
    expect(gone).to be_nil
  end
end