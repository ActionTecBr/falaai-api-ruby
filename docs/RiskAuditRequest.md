# FalaAI::RiskAuditRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model** | **String** | Analysis model. Always &#39;falaai-risk-audit-1&#39; | [optional][default to &#39;falaai-risk-audit-1&#39;] |
| **dialog** | **String** | Diarized transcript with speaker turns. REQUIRED — risk audit only accepts diarized conversations; plain &#39;text&#39; is not accepted. Speaker labels accepted (any case): &#39;Speaker N&#39;, &#39;Interlocutor N&#39;, &#39;Hablante N&#39;, &#39;Locutor N&#39;, &#39;Orador N&#39; (space or underscore). Normalized internally to &#39;Speaker N&#39; in the response. Max 300,000 characters |  |
| **audio_events** | [**Array&lt;DiagnosticAudioEvent&gt;**](DiagnosticAudioEvent.md) | Audio events with timestamps (correlated with turns when diarization is present) | [optional] |
| **duration_seconds** | **Float** | Total audio duration in seconds. Required. Must be &gt;&#x3D; last turn end. Max 3h (10800s). |  |
| **language** | **String** | Language of the transcript being analyzed. Must match the dialog/text language. Accepted: pt-BR, en-US, es-ES. |  |
| **response_language** | **String** | Language for analysis results (labels, categories, levels, actions, HTML report). Can differ from &#39;language&#39;. Accepted: pt-BR, en-US, es-ES. |  |
| **call_direction** | **String** | Who originated the call. inbound&#x3D;client called, outbound&#x3D;company called. If omitted, LLM infers from context. | [optional] |
| **participants** | [**Array&lt;Participant&gt;**](Participant.md) | Explicit participant roles. If omitted, LLM infers from dialog (Lei 17). When provided, used as ground truth — no inference. | [optional] |
| **response_format** | **String** | Response format version. Only &#39;v2&#39; (structured EN-US blocks) is available today. | [optional][default to &#39;v2&#39;] |
| **client_reference_id** | **String** | Optional client-supplied ID echoed verbatim in the response. Use to correlate/sync with your system. Accepted charset: [A-Za-z0-9 _/:.-], max 60 chars. Not idempotency. | [optional] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::RiskAuditRequest.new(
  model: null,
  dialog: null,
  audio_events: null,
  duration_seconds: null,
  language: null,
  response_language: null,
  call_direction: null,
  participants: null,
  response_format: null,
  client_reference_id: null
)
```

