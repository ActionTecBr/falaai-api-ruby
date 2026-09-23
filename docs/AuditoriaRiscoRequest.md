# FalaAI::AuditoriaRiscoRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model** | **String** | Analysis model. Always &#39;falaai-auditoria-risco-1&#39; | [optional][default to &#39;falaai-auditoria-risco-1&#39;] |
| **text** | **String** | Plain transcript (fallback if dialog is empty). At least one of &#39;dialog&#39; or &#39;text&#39; required. Max 300,000 characters | [optional][default to &#39;&#39;] |
| **dialog** | **String** | Diarized transcript with speaker turns. PRIMARY source. Speaker labels accepted (any case): &#39;Speaker N&#39;, &#39;Interlocutor N&#39;, &#39;Hablante N&#39;, &#39;Locutor N&#39;, &#39;Orador N&#39; (space or underscore). Normalized internally to &#39;Speaker N&#39; in the response. Max 300,000 characters | [optional][default to &#39;&#39;] |
| **audio_events** | [**Array&lt;DiagnosticAudioEvent&gt;**](DiagnosticAudioEvent.md) | Audio events with timestamps (correlated with turns when diarization is present) | [optional] |
| **duration_seconds** | **Float** | Total audio duration in seconds. Required. Max 3h (10800s). |  |
| **language** | **String** | Language of the transcript being analyzed. Must match the dialog/text language. Accepted: pt-BR, en-US, es-ES. |  |
| **response_language** | **String** | Language for analysis results (labels, categories, levels, actions, HTML report). Can differ from &#39;language&#39;. Accepted: pt-BR, en-US, es-ES. |  |
| **call_direction** | **String** | Who originated the call. inbound&#x3D;client called, outbound&#x3D;company called. If omitted, LLM infers from context. | [optional] |
| **participants** | [**Array&lt;Participant&gt;**](Participant.md) | Explicit participant roles. If omitted, LLM infers from dialog (Lei 17). When provided, used as ground truth â€” no inference. | [optional] |
| **response_format** | **String** | Response format version. v1&#x3D;legacy flat PT-BR, v2&#x3D;structured EN-US blocks. | [optional][default to &#39;v2&#39;] |
| **client_reference_id** | **String** | Optional client-supplied ID echoed verbatim in the response. Use to correlate/sync with your system. Accepted charset: [A-Za-z0-9._:-], max 128 chars. Not idempotency. | [optional] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::AuditoriaRiscoRequest.new(
  model: falaai-auditoria-risco-1,
  text: null,
  dialog: Speaker 1: [00:00:00.540 - 00:00:01.139] Hi, Alex.,
  audio_events: null,
  duration_seconds: null,
  language: pt-BR,
  response_language: en-US,
  call_direction: inbound,
  participants: [{interlocutor&#x3D;Interlocutor 1, name&#x3D;Antonio, role&#x3D;client}, {interlocutor&#x3D;Interlocutor 2, name&#x3D;Maria, role&#x3D;agent}],
  response_format: v2,
  client_reference_id: call-2026-08-30-001
)
```

