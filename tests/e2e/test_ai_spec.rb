require 'net/http'
require 'uri'

RSpec.describe 'AI' do
  it 'transcribe -> diagnostic -> auditoria' do
    client = E2E.client(E2E.prod)
    sp = FalaAI::SpeechApi.new(client)
    an = FalaAI::AnalysisApi.new(client)

    tr, ts = sp.create_transcription_v1_audio_transcriptions_post_with_http_info(
      File.open(E2E.audio),
      model: 'falaai-transcribe-1', language: 'pt', client_reference_id: 'e2e-call-2026-09-22-001'
    )
    E2ELogger.log('transcriptions', 'POST', '/v1/audio/transcriptions',
                  { file: 'analise_25s.mp3', model: 'falaai-transcribe-1', language: 'pt', client_reference_id: 'e2e-call-2026-09-22-001' }, tr, "HTTP #{ts}", ts)
    expect(ts).to eq(200)
    expect(tr.id).to be_a(String)
    expect(tr.id).not_to be_empty
    expect(tr.object).to be_a(String)
    expect(tr.object).not_to be_empty
    expect(tr.model).to be_a(String)
    expect(tr.model).not_to be_empty
    expect(tr.filename).to be_a(String)
    expect(tr.filename).not_to be_empty
    expect(tr.processed_at).to be_a(String)
    expect(tr.processed_at).not_to be_empty
    expect(tr.usage.audio_seconds).to be_a(Float)
    expect(tr.usage.audio_seconds).to be > 0
    expect(tr.usage.credits_consumed).to be_a(Integer)
    expect(tr.usage.processing_ms).to be_a(Integer)
    expect(tr.language).to be_a(String)
    expect(tr.language).not_to be_empty
    expect(tr.duration_seconds).to be_a(Float)
    expect(tr.duration_seconds).to be > 0
    expect(tr.text).to be_a(String)
    expect(tr.text).not_to be_empty
    expect(tr.dialog).to be_a(String)
    expect(tr.dialog).not_to be_empty
    expect(tr.audio_events).to be_a(Array)
    tr.audio_events.each do |e|
      expect(e.event).to be_a(String)
      expect(e.event).not_to be_empty
      expect(e.start_s).to be_a(Float)
      expect(e.end_s).to be_a(Float)
      expect(e.duration_s).to be_a(Float)
      expect(e.formatted_timestamp).to be_a(String)
      expect(e.formatted_timestamp).not_to be_empty
    end
    expect(tr.event_types).to be_a(Array)
    expect(tr.word_count).to be_a(Integer)
    expect(tr.word_count).to be > 0
    expect(tr.input.duration_s).to be_a(Float)
    expect(tr.input.original_format).to be_a(String)
    expect(tr.input.original_format).not_to be_empty
    expect(tr.input.codec).to be_a(String)
    expect(tr.input.codec).not_to be_empty
    expect(tr.input.sample_rate).to be_a(Integer)
    expect(tr.input.channels).to be_a(Integer)

    db = FalaAI::DiagnosticRequest.new(model: 'falaai-diagnostic-1', dialog: tr.dialog, language: 'pt-BR',
                                       duration_seconds: tr.duration_seconds, text: tr.text,
                                       audio_events: tr.audio_events, client_reference_id: 'e2e-diag-2026-09-22-001')
    d, ds = an.create_diagnostic_v1_analyze_diagnostic_post_with_http_info(db)
    E2ELogger.log('diagnostic', 'POST', '/v1/analyze/diagnostic', db, d, "HTTP #{ds}", ds)
    expect(ds).to eq(200)
    expect(d.id).to be_a(String)
    expect(d.id).not_to be_empty
    expect(d.response_language).to be_a(String)
    expect(d.response_language).not_to be_empty
    expect(d.object).to eq('analysis')
    expect(d.analysis.dialogue_summary).not_to be_nil
    expect(d.analysis.contact_reason).not_to be_nil
    expect(d.analysis.identified_action).not_to be_nil
    expect(d.analysis.identified_label).not_to be_nil
    expect(d.analysis.sentiment).not_to be_nil
    expect(d.usage.characters).to be_a(Integer)
    expect(d.usage.credits_consumed).to be_a(Integer)
    expect(d.usage.processing_ms).to be_a(Integer)

    participants = [
      FalaAI::Participant.new(interlocutor: 'Speaker 1', name: 'Mateus', role: 'agent'),
      FalaAI::Participant.new(interlocutor: 'Speaker 2', name: 'Cliente', role: 'client')
    ]
    ab = FalaAI::AuditoriaRiscoRequest.new(model: 'falaai-auditoria-risco-1', dialog: tr.dialog, language: 'pt-BR',
                                           response_language: 'pt-BR', duration_seconds: tr.duration_seconds, text: tr.text,
                                           audio_events: tr.audio_events, call_direction: 'inbound', participants: participants,
                                           response_format: 'v2', client_reference_id: 'e2e-aud-2026-09-22-001')
    a, ash = an.create_auditoria_risco_v1_analyze_auditoria_risco_post_with_http_info(ab)
    E2ELogger.log('auditoriaRisco', 'POST', '/v1/analyze/auditoriaRisco', ab, a, "HTTP #{ash}", ash)
    expect(ash).to eq(200)
    pub = a.response
    expect(pub.meta.id).to be_a(String)
    expect(pub.meta.id).not_to be_empty
    expect(pub.meta.usage.characters).to be_a(Integer)
    expect(pub.meta.usage.credits_consumed).to be_a(Integer)
    expect(pub.meta.usage.processing_ms).to be_a(Integer)
    %w[participants verdict scores detections analysis timeline audio_event_model
       categories_summary indexer summary acoes_i18n audit_decisions scoring_explanation].each do |bloco|
      expect(pub.send(bloco)).not_to be_nil
    end
    expect(pub.html_report).to be_a(String)
  end
end