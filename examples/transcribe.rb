# frozen_string_literal: true
require 'falaai-api'

config = FalaAI::Configuration.new
config.scheme = ENV.fetch('FALAAI_BASE_URL', 'https://api01-falaai.action.tec.br').start_with?('https') ? 'https' : 'http'
config.host = ENV.fetch('FALAAI_BASE_URL', 'https://api01-falaai.action.tec.br').sub(%r{^https?://}, '')
config.base_path = ''
config.access_token = ENV['FALAAI_API_KEY']
client = FalaAI::ApiClient.new(config)

audio = File.open("demo_callcenter.mp3")
# REQUIRED: file (audio) + Authorization (fai_ key)
# OPTIONAL (server defaults): model -> falaai-transcribe-1 | language -> pt | client_reference_id -> (empty)
transcription, _status = FalaAI::SpeechApi.new(client).create_transcription_v1_audio_transcriptions_post_with_http_info(
  audio,
    model: "falaai-transcribe-1",
    language: "pt",
    client_reference_id: "call_202609271408"
)
puts JSON.pretty_generate(transcription.to_hash)
