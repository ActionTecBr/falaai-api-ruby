# FalaAI::UsageApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_usage_by_key_v1_usage_by_key_get**](UsageApi.md#get_usage_by_key_v1_usage_by_key_get) | **GET** /v1/usage/by-key | Get Usage By Key |
| [**get_usage_log_v1_usage_log_get**](UsageApi.md#get_usage_log_v1_usage_log_get) | **GET** /v1/usage/log | Get Usage Log |


## get_usage_by_key_v1_usage_by_key_get

> <Array<UsageByKeyItem>> get_usage_by_key_v1_usage_by_key_get(opts)

Get Usage By Key

### Examples

```ruby
require 'time'
require 'falaai-api'
# setup authorization
FalaAI.configure do |config|
  # Configure Bearer authorization (fai_xxx): ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FalaAI::UsageApi.new
opts = {
  key_id: 'key_id_example' # String | 
}

begin
  # Get Usage By Key
  result = api_instance.get_usage_by_key_v1_usage_by_key_get(opts)
  p result
rescue FalaAI::ApiError => e
  puts "Error when calling UsageApi->get_usage_by_key_v1_usage_by_key_get: #{e}"
end
```

#### Using the get_usage_by_key_v1_usage_by_key_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UsageByKeyItem>>, Integer, Hash)> get_usage_by_key_v1_usage_by_key_get_with_http_info(opts)

```ruby
begin
  # Get Usage By Key
  data, status_code, headers = api_instance.get_usage_by_key_v1_usage_by_key_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UsageByKeyItem>>
rescue FalaAI::ApiError => e
  puts "Error when calling UsageApi->get_usage_by_key_v1_usage_by_key_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_id** | **String** |  | [optional] |

### Return type

[**Array&lt;UsageByKeyItem&gt;**](UsageByKeyItem.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_usage_log_v1_usage_log_get

> <UsageLogResponse> get_usage_log_v1_usage_log_get(opts)

Get Usage Log

### Examples

```ruby
require 'time'
require 'falaai-api'
# setup authorization
FalaAI.configure do |config|
  # Configure Bearer authorization (fai_xxx): ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FalaAI::UsageApi.new
opts = {
  page: 56, # Integer | 
  limit: 56, # Integer | 
  api_key_id: 'api_key_id_example' # String | 
}

begin
  # Get Usage Log
  result = api_instance.get_usage_log_v1_usage_log_get(opts)
  p result
rescue FalaAI::ApiError => e
  puts "Error when calling UsageApi->get_usage_log_v1_usage_log_get: #{e}"
end
```

#### Using the get_usage_log_v1_usage_log_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageLogResponse>, Integer, Hash)> get_usage_log_v1_usage_log_get_with_http_info(opts)

```ruby
begin
  # Get Usage Log
  data, status_code, headers = api_instance.get_usage_log_v1_usage_log_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageLogResponse>
rescue FalaAI::ApiError => e
  puts "Error when calling UsageApi->get_usage_log_v1_usage_log_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional][default to 1] |
| **limit** | **Integer** |  | [optional][default to 20] |
| **api_key_id** | **String** |  | [optional] |

### Return type

[**UsageLogResponse**](UsageLogResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

