# FalaAI::TranscriptionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique transcription identifier. Prefix &#39;tr-&#39; followed by UUID |  |
| **object** | **String** | Returned object type. Always &#39;transcription&#39; |  |
| **model** | **String** | Model used for transcription. Ex: &#39;falaai-transcribe-1&#39; |  |
| **filename** | **String** | Original audio file name uploaded |  |
| **processed_at** | **String** | Processing datetime in ISO 8601 UTC format |  |
| **usage** | [**TranscriptionUsage**](TranscriptionUsage.md) | Usage and processing information |  |
| **language** | **String** | ISO 639-3 language code detected in audio. Ex: &#39;por&#39; (Portuguese), &#39;eng&#39; (English), &#39;spa&#39; (Spanish) |  |
| **language_confidence** | **Float** | Language detection confidence level (0.0 to 1.0). Higher is more reliable | [optional] |
| **duration_seconds** | **Float** | Total audio duration in seconds |  |
| **text** | **String** | Full transcription as plain text, including audio events in brackets |  |
| **dialog** | **String** | Turn-by-turn formatted transcript with speaker identification and start/end timestamps |  |
| **audio_events** | [**Array&lt;AudioEvent&gt;**](AudioEvent.md) | List of detected audio events (laughs, sighs, pauses, etc) with timestamps and duration |  |
| **event_types** | **Array&lt;String&gt;** | Unique audio event types found in transcription, alphabetically sorted |  |
| **word_count** | **Integer** | Total number of recognized words in transcription |  |
| **input** | [**AudioInputMeta**](AudioInputMeta.md) | Metadados do arquivo de audio enviado (duracao, formato, codec, sample rate, canais) |  |
| **client_reference_id** | **String** | Client-supplied ID echoed verbatim (if provided in request) | [optional] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::TranscriptionResponse.new(
  id: tr-550e8400-e29b-41d4-a716-446655440000,
  object: transcription,
  model: falaai-transcribe-1,
  filename: chamada.mp3,
  processed_at: 2026-06-25T01:00:35.399252+00:00,
  usage: null,
  language: por,
  language_confidence: 1.0,
  duration_seconds: 151.04,
  text: Oi, Alex. Oi. O, Thais- Oi...,
  dialog: Speaker 1: [00:00:00.540 - 00:00:01.139] Oi, Alex.
Speaker 2: [00:00:01.940 - 00:00:02.720] Oi...,
  audio_events: null,
  event_types: [[riso], [suspiro]],
  word_count: 773,
  input: null,
  client_reference_id: call-2026-08-30-001
)
```

