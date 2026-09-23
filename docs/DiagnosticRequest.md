# FalaAI::DiagnosticRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model** | **String** | Analysis model. Always &#39;falaai-diagnostic-1&#39; | [optional][default to &#39;falaai-diagnostic-1&#39;] |
| **text** | **String** | Plain transcript (fallback if dialog is empty). At least one of &#39;dialog&#39; or &#39;text&#39; required. Max 300,000 characters | [optional][default to &#39;&#39;] |
| **dialog** | **String** | Diarized transcript with speaker turns. PRIMARY source. At least one of &#39;dialog&#39; or &#39;text&#39; required. Speaker labels accepted (any case): &#39;Speaker N&#39;, &#39;Interlocutor N&#39;, &#39;Hablante N&#39;, &#39;Locutor N&#39;, &#39;Orador N&#39; (space or underscore). Normalized internally to &#39;Speaker N&#39; in the response. Max 300,000 characters | [optional][default to &#39;&#39;] |
| **audio_events** | [**Array&lt;DiagnosticAudioEvent&gt;**](DiagnosticAudioEvent.md) | Detected audio events with timestamps (required when using dialog) | [optional] |
| **language** | **String** | Transcript language. Required. Accepted: en-US, pt-BR, es-ES, es-MX, fr-FR, de-DE, it-IT, pt-PT, zh-CN, ja-JP, ko-KR, ar-SA, hi-IN, ru-RU, id-ID, tr-TR, nl-NL, pl-PL, vi-VN, th-TH, en-GB |  |
| **duration_seconds** | **Float** | Total audio duration in seconds. Required. Max 3h (10800s). |  |
| **client_reference_id** | **String** | Optional client-supplied ID echoed verbatim in the response. Use to correlate/sync with your system. Accepted charset: [A-Za-z0-9._:-], max 128 chars. Not idempotency. | [optional] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::DiagnosticRequest.new(
  model: falaai-diagnostic-1,
  text: null,
  dialog: Speaker 1: [00:00:00.540 - 00:00:01.139] Hi, Alex.,
  audio_events: null,
  language: pt-BR,
  duration_seconds: null,
  client_reference_id: call-2026-08-30-001
)
```

