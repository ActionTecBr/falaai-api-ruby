# FalaAI::VersionApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_version_api_version_get**](VersionApi.md#get_version_api_version_get) | **GET** /api/version | Get Version |


## get_version_api_version_get

> <VersionResponse> get_version_api_version_get

Get Version

### Examples

```ruby
require 'time'
require 'falaai-api'
# setup authorization
FalaAI.configure do |config|
  # Configure Bearer authorization (fai_xxx): ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FalaAI::VersionApi.new

begin
  # Get Version
  result = api_instance.get_version_api_version_get
  p result
rescue FalaAI::ApiError => e
  puts "Error when calling VersionApi->get_version_api_version_get: #{e}"
end
```

#### Using the get_version_api_version_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VersionResponse>, Integer, Hash)> get_version_api_version_get_with_http_info

```ruby
begin
  # Get Version
  data, status_code, headers = api_instance.get_version_api_version_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VersionResponse>
rescue FalaAI::ApiError => e
  puts "Error when calling VersionApi->get_version_api_version_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**VersionResponse**](VersionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

