# FalaAI::SpeechApi

All URIs are relative to *https://api01-falaai.action.tec.br*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_transcription_v1_audio_transcriptions_post**](SpeechApi.md#create_transcription_v1_audio_transcriptions_post) | **POST** /v1/audio/transcriptions | Transcribe audio to text |


## create_transcription_v1_audio_transcriptions_post

> <TranscriptionResponse> create_transcription_v1_audio_transcriptions_post(file, opts)

Transcribe audio to text

Transcribes one uploaded audio file into text with speaker diarization and timestamped audio events (laughs, sighs, pauses), returning the full transcript, a turn-by-turn dialog with speaker labels and start/end timestamps, the detected events and the word count. Use it when a recording must become text for analysis, review or storage of the transcript. The required file field takes a single audio upload limited to 1GB and 3 hours, with accepted MIME types audio/mpeg, audio/mp3, audio/mp4, audio/m4a, audio/wav, audio/wave, audio/x-wav, audio/flac, audio/x-flac, audio/ogg, audio/opus, video/ogg, audio/webm, video/webm, audio/aac and audio/x-aac. model is optional and defaults to falaai-transcribe-1, the only supported value; language is an optional two-letter code (pt, en, es, fr, de, it, ja, ko, nl, pl, ru, tr, zh, vi, id, th, ar, hi, cs, da, el, fi, he, hu, ms, no, ro, sk, sv, ta, uk) that forces the audio language and is auto-detected when omitted; client_reference_id is optional, charset A-Za-z0-9 space _/:.- up to 60 chars, echoed verbatim (not idempotency). Billing is 1 credit per second of processed audio with a minimum of 10 credits per request, rounded to 2 decimals; usage reports credits_consumed and processing_ms. Stateless: the audio is processed in memory and never persisted (LGPD). Returns id (tr-), language, language_confidence, duration_seconds, text, dialog, audio_events, event_types, word_count and input metadata (duration, format, codec, sample rate, channels).

### Examples

```ruby
require 'time'
require 'falaai-api'
# setup authorization
FalaAI.configure do |config|
  # Configure Bearer authorization (fai_xxx): ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FalaAI::SpeechApi.new
file = File.new('/path/to/some/file') # File | 
opts = {
  model: 'model_example', # String | 
  language: 'language_example', # String | 
  client_reference_id: 'client_reference_id_example' # String | Optional client-supplied ID echoed verbatim in the response. Use to correlate/sync with your system. Accepted charset: [A-Za-z0-9 _/:.-], max 60 chars. Not idempotency.
}

begin
  # Transcribe audio to text
  result = api_instance.create_transcription_v1_audio_transcriptions_post(file, opts)
  p result
rescue FalaAI::ApiError => e
  puts "Error when calling SpeechApi->create_transcription_v1_audio_transcriptions_post: #{e}"
end
```

#### Using the create_transcription_v1_audio_transcriptions_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TranscriptionResponse>, Integer, Hash)> create_transcription_v1_audio_transcriptions_post_with_http_info(file, opts)

```ruby
begin
  # Transcribe audio to text
  data, status_code, headers = api_instance.create_transcription_v1_audio_transcriptions_post_with_http_info(file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TranscriptionResponse>
rescue FalaAI::ApiError => e
  puts "Error when calling SpeechApi->create_transcription_v1_audio_transcriptions_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** |  |  |
| **model** | **String** |  | [optional][default to &#39;falaai-transcribe-1&#39;] |
| **language** | **String** |  | [optional] |
| **client_reference_id** | **String** | Optional client-supplied ID echoed verbatim in the response. Use to correlate/sync with your system. Accepted charset: [A-Za-z0-9 _/:.-], max 60 chars. Not idempotency. | [optional] |

### Return type

[**TranscriptionResponse**](TranscriptionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

