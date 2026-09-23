# FalaAI::EmailAlertsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_email_alert_v1_email_alerts_post**](EmailAlertsApi.md#create_email_alert_v1_email_alerts_post) | **POST** /v1/email-alerts | Criar email de alerta |
| [**delete_email_alert_v1_email_alerts_alert_id_delete**](EmailAlertsApi.md#delete_email_alert_v1_email_alerts_alert_id_delete) | **DELETE** /v1/email-alerts/{alert_id} | Remover email de alerta |
| [**list_email_alerts_v1_email_alerts_get**](EmailAlertsApi.md#list_email_alerts_v1_email_alerts_get) | **GET** /v1/email-alerts | Listar emails de alerta |
| [**update_email_alert_v1_email_alerts_alert_id_put**](EmailAlertsApi.md#update_email_alert_v1_email_alerts_alert_id_put) | **PUT** /v1/email-alerts/{alert_id} | Atualizar email de alerta |


## create_email_alert_v1_email_alerts_post

> <EmailAlertItem> create_email_alert_v1_email_alerts_post(create_email_alert_request)

Criar email de alerta

### Examples

```ruby
require 'time'
require 'falaai-api'
# setup authorization
FalaAI.configure do |config|
  # Configure Bearer authorization (fai_xxx): ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FalaAI::EmailAlertsApi.new
create_email_alert_request = FalaAI::CreateEmailAlertRequest.new({name: 'Financeiro', email: 'finance@empresa.com', events: [payment.failed,  subscription.renewed]}) # CreateEmailAlertRequest | 

begin
  # Criar email de alerta
  result = api_instance.create_email_alert_v1_email_alerts_post(create_email_alert_request)
  p result
rescue FalaAI::ApiError => e
  puts "Error when calling EmailAlertsApi->create_email_alert_v1_email_alerts_post: #{e}"
end
```

#### Using the create_email_alert_v1_email_alerts_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailAlertItem>, Integer, Hash)> create_email_alert_v1_email_alerts_post_with_http_info(create_email_alert_request)

```ruby
begin
  # Criar email de alerta
  data, status_code, headers = api_instance.create_email_alert_v1_email_alerts_post_with_http_info(create_email_alert_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailAlertItem>
rescue FalaAI::ApiError => e
  puts "Error when calling EmailAlertsApi->create_email_alert_v1_email_alerts_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_email_alert_request** | [**CreateEmailAlertRequest**](CreateEmailAlertRequest.md) |  |  |

### Return type

[**EmailAlertItem**](EmailAlertItem.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_email_alert_v1_email_alerts_alert_id_delete

> <EmailAlertMessageResponse> delete_email_alert_v1_email_alerts_alert_id_delete(alert_id)

Remover email de alerta

### Examples

```ruby
require 'time'
require 'falaai-api'
# setup authorization
FalaAI.configure do |config|
  # Configure Bearer authorization (fai_xxx): ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FalaAI::EmailAlertsApi.new
alert_id = 'alert_id_example' # String | 

begin
  # Remover email de alerta
  result = api_instance.delete_email_alert_v1_email_alerts_alert_id_delete(alert_id)
  p result
rescue FalaAI::ApiError => e
  puts "Error when calling EmailAlertsApi->delete_email_alert_v1_email_alerts_alert_id_delete: #{e}"
end
```

#### Using the delete_email_alert_v1_email_alerts_alert_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailAlertMessageResponse>, Integer, Hash)> delete_email_alert_v1_email_alerts_alert_id_delete_with_http_info(alert_id)

```ruby
begin
  # Remover email de alerta
  data, status_code, headers = api_instance.delete_email_alert_v1_email_alerts_alert_id_delete_with_http_info(alert_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailAlertMessageResponse>
rescue FalaAI::ApiError => e
  puts "Error when calling EmailAlertsApi->delete_email_alert_v1_email_alerts_alert_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alert_id** | **String** |  |  |

### Return type

[**EmailAlertMessageResponse**](EmailAlertMessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_email_alerts_v1_email_alerts_get

> <EmailAlertListResponse> list_email_alerts_v1_email_alerts_get(opts)

Listar emails de alerta

### Examples

```ruby
require 'time'
require 'falaai-api'
# setup authorization
FalaAI.configure do |config|
  # Configure Bearer authorization (fai_xxx): ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FalaAI::EmailAlertsApi.new
opts = {
  page: 56, # Integer | 
  limit: 56 # Integer | 
}

begin
  # Listar emails de alerta
  result = api_instance.list_email_alerts_v1_email_alerts_get(opts)
  p result
rescue FalaAI::ApiError => e
  puts "Error when calling EmailAlertsApi->list_email_alerts_v1_email_alerts_get: #{e}"
end
```

#### Using the list_email_alerts_v1_email_alerts_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailAlertListResponse>, Integer, Hash)> list_email_alerts_v1_email_alerts_get_with_http_info(opts)

```ruby
begin
  # Listar emails de alerta
  data, status_code, headers = api_instance.list_email_alerts_v1_email_alerts_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailAlertListResponse>
rescue FalaAI::ApiError => e
  puts "Error when calling EmailAlertsApi->list_email_alerts_v1_email_alerts_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional][default to 1] |
| **limit** | **Integer** |  | [optional][default to 20] |

### Return type

[**EmailAlertListResponse**](EmailAlertListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_email_alert_v1_email_alerts_alert_id_put

> <EmailAlertMessageResponse> update_email_alert_v1_email_alerts_alert_id_put(alert_id, update_email_alert_request)

Atualizar email de alerta

### Examples

```ruby
require 'time'
require 'falaai-api'
# setup authorization
FalaAI.configure do |config|
  # Configure Bearer authorization (fai_xxx): ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FalaAI::EmailAlertsApi.new
alert_id = 'alert_id_example' # String | 
update_email_alert_request = FalaAI::UpdateEmailAlertRequest.new # UpdateEmailAlertRequest | 

begin
  # Atualizar email de alerta
  result = api_instance.update_email_alert_v1_email_alerts_alert_id_put(alert_id, update_email_alert_request)
  p result
rescue FalaAI::ApiError => e
  puts "Error when calling EmailAlertsApi->update_email_alert_v1_email_alerts_alert_id_put: #{e}"
end
```

#### Using the update_email_alert_v1_email_alerts_alert_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailAlertMessageResponse>, Integer, Hash)> update_email_alert_v1_email_alerts_alert_id_put_with_http_info(alert_id, update_email_alert_request)

```ruby
begin
  # Atualizar email de alerta
  data, status_code, headers = api_instance.update_email_alert_v1_email_alerts_alert_id_put_with_http_info(alert_id, update_email_alert_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailAlertMessageResponse>
rescue FalaAI::ApiError => e
  puts "Error when calling EmailAlertsApi->update_email_alert_v1_email_alerts_alert_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alert_id** | **String** |  |  |
| **update_email_alert_request** | [**UpdateEmailAlertRequest**](UpdateEmailAlertRequest.md) |  |  |

### Return type

[**EmailAlertMessageResponse**](EmailAlertMessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

