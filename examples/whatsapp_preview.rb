# frozen_string_literal: true

require "falaai-api"

config = FalaAI::Configuration.new
config.scheme = ENV.fetch('FALAAI_BASE_URL', 'https://api01-falaai.action.tec.br').start_with?('https') ? 'https' : 'http'
config.host = ENV.fetch('FALAAI_BASE_URL', 'https://api01-falaai.action.tec.br').sub(%r{^https?://}, '')
config.base_path = ''
config.access_token = ENV['FALAAI_API_KEY']
whatsapp_api = FalaAI::WhatsappApi.new(FalaAI::ApiClient.new(config))

# PREVIEW (dry_run) - passo GRATIS: valida/segmenta o export e ESTIMA os creditos, SEM IA e SEM debito.
# SEM start/end: a API usa o periodo REAL do export (fora do preview a janela e obrigatoria).
# REQUIRED: file (.zip/.txt export), timezone, date_format + Authorization
# OPTIONAL: gap_minutes (default 720) | min_messages (default 2) | client_reference_id
result, _status = whatsapp_api.extract_conversations_v1_whatsapp_extract_conversations_post_with_http_info(
  File.open("demo_whatsapp.zip"),
  "-3",
  "day_first",
  {
    gap_minutes: 720,
    min_messages: 2,
    voice_note: true,
    expression: true,
    dry_run: true,
  }
)

puts result.to_json
