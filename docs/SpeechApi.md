# FalaAI::SpeechApi

All URIs are relative to *https://api01-falaai.action.tec.br*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_transcription_v1_audio_transcriptions_post**](SpeechApi.md#create_transcription_v1_audio_transcriptions_post) | **POST** /v1/audio/transcriptions | Transcribe audio to text |


## create_transcription_v1_audio_transcriptions_post

> <TranscriptionResponse> create_transcription_v1_audio_transcriptions_post(file, opts)

Transcribe audio to text

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
  client_reference_id: 'client_reference_id_example' # String | Optional client-supplied ID echoed verbatim in the response. Use to correlate/sync with your system. Accepted charset: [A-Za-z0-9._:-]. Not idempotency.
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
| **language** | **String** |  | [optional][default to &#39;pt&#39;] |
| **client_reference_id** | **String** | Optional client-supplied ID echoed verbatim in the response. Use to correlate/sync with your system. Accepted charset: [A-Za-z0-9._:-]. Not idempotency. | [optional] |

### Return type

[**TranscriptionResponse**](TranscriptionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

