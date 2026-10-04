# FalaAI::WhatsappApi

All URIs are relative to *https://api01-falaai.action.tec.br*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**extract_conversations_v1_whatsapp_extract_conversations_post**](WhatsappApi.md#extract_conversations_v1_whatsapp_extract_conversations_post) | **POST** /v1/whatsapp/extractConversations | Extract and segment WhatsApp conversations from an export |


## extract_conversations_v1_whatsapp_extract_conversations_post

> <WhatsappConversationsResponse> extract_conversations_v1_whatsapp_extract_conversations_post(file, start, _end, timezone, date_format, opts)

Extract and segment WhatsApp conversations from an export

### Examples

```ruby
require 'time'
require 'falaai-api'
# setup authorization
FalaAI.configure do |config|
  # Configure Bearer authorization (fai_xxx): ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FalaAI::WhatsappApi.new
file = File.new('/path/to/some/file') # File | 
start = 'start_example' # String | 
_end = '_end_example' # String | 
timezone = 'timezone_example' # String | 
date_format = 'date_format_example' # String | 
opts = {
  gap_minutes: 8.14, # Float | 
  min_messages: 56, # Integer | 
  chars_per_minute: 8.14, # Float | 
  client_reference_id: 'client_reference_id_example' # String | 
}

begin
  # Extract and segment WhatsApp conversations from an export
  result = api_instance.extract_conversations_v1_whatsapp_extract_conversations_post(file, start, _end, timezone, date_format, opts)
  p result
rescue FalaAI::ApiError => e
  puts "Error when calling WhatsappApi->extract_conversations_v1_whatsapp_extract_conversations_post: #{e}"
end
```

#### Using the extract_conversations_v1_whatsapp_extract_conversations_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WhatsappConversationsResponse>, Integer, Hash)> extract_conversations_v1_whatsapp_extract_conversations_post_with_http_info(file, start, _end, timezone, date_format, opts)

```ruby
begin
  # Extract and segment WhatsApp conversations from an export
  data, status_code, headers = api_instance.extract_conversations_v1_whatsapp_extract_conversations_post_with_http_info(file, start, _end, timezone, date_format, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WhatsappConversationsResponse>
rescue FalaAI::ApiError => e
  puts "Error when calling WhatsappApi->extract_conversations_v1_whatsapp_extract_conversations_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** |  |  |
| **start** | **String** |  |  |
| **_end** | **String** |  |  |
| **timezone** | **String** |  |  |
| **date_format** | **String** |  |  |
| **gap_minutes** | **Float** |  | [optional][default to 720] |
| **min_messages** | **Integer** |  | [optional][default to 2] |
| **chars_per_minute** | **Float** |  | [optional][default to 800] |
| **client_reference_id** | **String** |  | [optional] |

### Return type

[**WhatsappConversationsResponse**](WhatsappConversationsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

