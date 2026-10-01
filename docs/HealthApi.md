# FalaAI::HealthApi

All URIs are relative to *https://api01-falaai.action.tec.br*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**health_check**](HealthApi.md#health_check) | **GET** /v1/health | Health Check |
| [**health_check_head**](HealthApi.md#health_check_head) | **HEAD** /v1/health | Health Check |


## health_check

> <HealthResponse> health_check

Health Check

### Examples

```ruby
require 'time'
require 'falaai-api'

api_instance = FalaAI::HealthApi.new

begin
  # Health Check
  result = api_instance.health_check
  p result
rescue FalaAI::ApiError => e
  puts "Error when calling HealthApi->health_check: #{e}"
end
```

#### Using the health_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HealthResponse>, Integer, Hash)> health_check_with_http_info

```ruby
begin
  # Health Check
  data, status_code, headers = api_instance.health_check_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HealthResponse>
rescue FalaAI::ApiError => e
  puts "Error when calling HealthApi->health_check_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**HealthResponse**](HealthResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## health_check_head

> <HealthResponse> health_check_head

Health Check

### Examples

```ruby
require 'time'
require 'falaai-api'

api_instance = FalaAI::HealthApi.new

begin
  # Health Check
  result = api_instance.health_check_head
  p result
rescue FalaAI::ApiError => e
  puts "Error when calling HealthApi->health_check_head: #{e}"
end
```

#### Using the health_check_head_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HealthResponse>, Integer, Hash)> health_check_head_with_http_info

```ruby
begin
  # Health Check
  data, status_code, headers = api_instance.health_check_head_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HealthResponse>
rescue FalaAI::ApiError => e
  puts "Error when calling HealthApi->health_check_head_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**HealthResponse**](HealthResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

