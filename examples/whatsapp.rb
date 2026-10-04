# frozen_string_literal: true

require "falaai-api"

config = FalaAI::Configuration.new
config.host = ENV.fetch("FALAAI_BASE_URL", "https://api01-falaai.action.tec.br")
config.access_token = ENV.fetch("FALAAI_API_KEY")
whatsapp_api = FalaAI::WhatsappApi.new(FalaAI::ApiClient.new(config))

# REQUIRED: file (.zip/.txt export), start, end, timezone, date_format + Authorization
# OPTIONAL: gap_minutes (default 720) | min_messages (default 2) | chars_per_minute (default 800) | client_reference_id
result = whatsapp_api.extract_conversations(
  File.open("demo_whatsapp.zip"),
  "2024-01-01T00:00:00",
  "2024-12-31T23:59:59",
  "-3",
  "day_first",
  720,
  2,
  800
)

puts result.to_json
