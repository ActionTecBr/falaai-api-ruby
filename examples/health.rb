# frozen_string_literal: true
require 'falaai-api'

config = FalaAI::Configuration.new
config.scheme = ENV.fetch('FALAAI_BASE_URL', 'https://api01-falaai.action.tec.br').start_with?('https') ? 'https' : 'http'
config.host = ENV.fetch('FALAAI_BASE_URL', 'https://api01-falaai.action.tec.br').sub(%r{^https?://}, '')
config.base_path = ''
client = FalaAI::ApiClient.new(config)

health = FalaAI::HealthApi.new(client).health_check
puts JSON.pretty_generate(health.to_hash)

FalaAI::HealthApi.new(client).health_check_head
