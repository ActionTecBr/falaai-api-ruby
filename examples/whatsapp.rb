# frozen_string_literal: true

require "falaai-api"

config = FalaAI::Configuration.new
config.scheme = ENV.fetch('FALAAI_BASE_URL', 'https://api01-falaai.action.tec.br').start_with?('https') ? 'https' : 'http'
config.host = ENV.fetch('FALAAI_BASE_URL', 'https://api01-falaai.action.tec.br').sub(%r{^https?://}, '')
config.base_path = ''
config.access_token = ENV['FALAAI_API_KEY']
whatsapp_api = FalaAI::WhatsappApi.new(FalaAI::ApiClient.new(config))

# REQUIRED: file (.zip/.txt export), start, end, timezone, date_format + Authorization
# OPTIONAL: gap_minutes (default 720) | min_messages (default 2) | client_reference_id
result, _status = whatsapp_api.extract_conversations_v1_whatsapp_extract_conversations_post_with_http_info(
  File.open("demo_whatsapp.zip"),
  "2024-01-01 00:00",
  "2024-12-31 23:59",
  "-3",
  "day_first",
  {
    gap_minutes: 720,
    min_messages: 2,
    voice_note: true,
    expression: true,
  }
)

puts result.to_json
