require 'uri'
require 'net/http'
require 'falaai-api'

module E2E
  def self.env
    @env ||= begin
      h = {}
      p = File.expand_path('../../../.env.e2e', __dir__)
      if File.file?(p)
        File.readlines(p).each do |line|
          line = line.strip
          next if line.empty? || line.start_with?('#') || !line.include?('=')
          k, v = line.split('=', 2)
          h[k.strip] = v.strip
        end
      end
      h
    end
  end

  def self.get(name)
    ENV[name] && !ENV[name].empty? ? ENV[name] : env[name]
  end

  def self.base
    get('FALAAI_E2E_BASE') || get('FALAAI_LOCAL_URL') || 'http://localhost:8002'
  end

  def self.prod
    get('FALAAI_PROD_URL') || 'https://api01-falaai.action.tec.br'
  end

  def self.key
    get('FALAAI_TEST_KEY')
  end

  def self.audio
    get('FALAAI_E2E_AUDIO')
  end

  def self.client(base_url, api_key = nil)
    uri = URI.parse(base_url)
    config = FalaAI::Configuration.new
    config.scheme = uri.scheme
    config.host = uri.host
    config.base_path = uri.path.to_s
    config.access_token = api_key || key
    config.timeout = 120
    FalaAI::ApiClient.new(config)
  end
end