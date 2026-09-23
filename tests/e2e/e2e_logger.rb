require 'json'
require 'fileutils'

module E2ELogger
  def self.log(name, method, path, payload, response, result, status = nil)
    safe = name.upcase.gsub(/[^A-Za-z0-9]+/, '_')
    dir = File.join(__dir__, 'logs', safe)
    FileUtils.mkdir_p(dir)
    ts = Time.now.strftime('%Y%m%d_%H%M%S')
    file = File.join(dir, "#{safe}_#{ts}.log")
    enc = lambda do |v|
      return '(sem dados)' if v.nil?
      v.respond_to?(:to_hash) ? JSON.pretty_generate(v.to_hash) : JSON.pretty_generate(v)
    rescue StandardError
      v.inspect
    end
    lines = [
      '=' * 70,
      "TESTE: #{method} #{path}",
      "DATA: #{Time.now.iso8601}",
      '=' * 70,
      '',
      '--- PAYLOAD (enviado) ---', enc.call(payload), '',
      '--- RESPOSTA (saida do SDK) ---', (status ? "HTTP: #{status}" : ''), enc.call(response), '',
      '--- RESULTADO ---', result.to_s, ''
    ]
    File.write(file, lines.join("\n"))
    file
  end
end