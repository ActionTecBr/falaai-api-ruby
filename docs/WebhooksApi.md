# FalaAI::WebhooksApi

All URIs are relative to *https://api01-falaai.action.tec.br*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhook_v1_webhooks_post**](WebhooksApi.md#create_webhook_v1_webhooks_post) | **POST** /v1/webhooks | Create webhook |
| [**delete_webhook_v1_webhooks_webhook_id_delete**](WebhooksApi.md#delete_webhook_v1_webhooks_webhook_id_delete) | **DELETE** /v1/webhooks/{webhook_id} | Delete webhook |
| [**list_webhooks_v1_webhooks_get**](WebhooksApi.md#list_webhooks_v1_webhooks_get) | **GET** /v1/webhooks | List webhooks |
| [**update_webhook_v1_webhooks_webhook_id_put**](WebhooksApi.md#update_webhook_v1_webhooks_webhook_id_put) | **PUT** /v1/webhooks/{webhook_id} | Update webhook |


## create_webhook_v1_webhooks_post

> <WebhookItem> create_webhook_v1_webhooks_post(create_webhook_request)

Create webhook

Creates a subscription for alert events (10 alerts). Payload delivered: WebhookPayload(event, data, timestamp) with HMAC FalaAI-Signature. To verify the origin, recompute HMAC-SHA256 of \"timestamp.body\" with your secret.

### Examples

```ruby
require 'time'
require 'falaai-api'
# setup authorization
FalaAI.configure do |config|
  # Configure Bearer authorization (fai_xxx): ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FalaAI::WebhooksApi.new
create_webhook_request = FalaAI::CreateWebhookRequest.new({name: 'name_example', url: 'url_example', events: [FalaAI::WebhookEvent::SUBSCRIPTION_CREATED]}) # CreateWebhookRequest | 

begin
  # Create webhook
  result = api_instance.create_webhook_v1_webhooks_post(create_webhook_request)
  p result
rescue FalaAI::ApiError => e
  puts "Error when calling WebhooksApi->create_webhook_v1_webhooks_post: #{e}"
end
```

#### Using the create_webhook_v1_webhooks_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookItem>, Integer, Hash)> create_webhook_v1_webhooks_post_with_http_info(create_webhook_request)

```ruby
begin
  # Create webhook
  data, status_code, headers = api_instance.create_webhook_v1_webhooks_post_with_http_info(create_webhook_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookItem>
rescue FalaAI::ApiError => e
  puts "Error when calling WebhooksApi->create_webhook_v1_webhooks_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_webhook_request** | [**CreateWebhookRequest**](CreateWebhookRequest.md) |  |  |

### Return type

[**WebhookItem**](WebhookItem.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_webhook_v1_webhooks_webhook_id_delete

> <MessageResponse> delete_webhook_v1_webhooks_webhook_id_delete(webhook_id)

Delete webhook

Deletes a webhook subscription by ID.

### Examples

```ruby
require 'time'
require 'falaai-api'
# setup authorization
FalaAI.configure do |config|
  # Configure Bearer authorization (fai_xxx): ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FalaAI::WebhooksApi.new
webhook_id = 'webhook_id_example' # String | 

begin
  # Delete webhook
  result = api_instance.delete_webhook_v1_webhooks_webhook_id_delete(webhook_id)
  p result
rescue FalaAI::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhook_v1_webhooks_webhook_id_delete: #{e}"
end
```

#### Using the delete_webhook_v1_webhooks_webhook_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> delete_webhook_v1_webhooks_webhook_id_delete_with_http_info(webhook_id)

```ruby
begin
  # Delete webhook
  data, status_code, headers = api_instance.delete_webhook_v1_webhooks_webhook_id_delete_with_http_info(webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue FalaAI::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhook_v1_webhooks_webhook_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **String** |  |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_webhooks_v1_webhooks_get

> <WebhookListResponse> list_webhooks_v1_webhooks_get(opts)

List webhooks

Lists the authenticated user's webhooks (10 alerts). Paginated. Includes the URL signature secret (always visible to the owner).

### Examples

```ruby
require 'time'
require 'falaai-api'
# setup authorization
FalaAI.configure do |config|
  # Configure Bearer authorization (fai_xxx): ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FalaAI::WebhooksApi.new
opts = {
  page: 56, # Integer | Pagina (1-indexed)
  limit: 56 # Integer | Itens por pagina (max 100)
}

begin
  # List webhooks
  result = api_instance.list_webhooks_v1_webhooks_get(opts)
  p result
rescue FalaAI::ApiError => e
  puts "Error when calling WebhooksApi->list_webhooks_v1_webhooks_get: #{e}"
end
```

#### Using the list_webhooks_v1_webhooks_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookListResponse>, Integer, Hash)> list_webhooks_v1_webhooks_get_with_http_info(opts)

```ruby
begin
  # List webhooks
  data, status_code, headers = api_instance.list_webhooks_v1_webhooks_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookListResponse>
rescue FalaAI::ApiError => e
  puts "Error when calling WebhooksApi->list_webhooks_v1_webhooks_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Pagina (1-indexed) | [optional][default to 1] |
| **limit** | **Integer** | Itens por pagina (max 100) | [optional][default to 20] |

### Return type

[**WebhookListResponse**](WebhookListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_webhook_v1_webhooks_webhook_id_put

> <MessageResponse> update_webhook_v1_webhooks_webhook_id_put(webhook_id, update_webhook_request)

Update webhook

Updates the webhook's name/url/events/retry_enabled/active. Valid events: 10 alerts.

### Examples

```ruby
require 'time'
require 'falaai-api'
# setup authorization
FalaAI.configure do |config|
  # Configure Bearer authorization (fai_xxx): ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FalaAI::WebhooksApi.new
webhook_id = 'webhook_id_example' # String | 
update_webhook_request = FalaAI::UpdateWebhookRequest.new # UpdateWebhookRequest | 

begin
  # Update webhook
  result = api_instance.update_webhook_v1_webhooks_webhook_id_put(webhook_id, update_webhook_request)
  p result
rescue FalaAI::ApiError => e
  puts "Error when calling WebhooksApi->update_webhook_v1_webhooks_webhook_id_put: #{e}"
end
```

#### Using the update_webhook_v1_webhooks_webhook_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> update_webhook_v1_webhooks_webhook_id_put_with_http_info(webhook_id, update_webhook_request)

```ruby
begin
  # Update webhook
  data, status_code, headers = api_instance.update_webhook_v1_webhooks_webhook_id_put_with_http_info(webhook_id, update_webhook_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue FalaAI::ApiError => e
  puts "Error when calling WebhooksApi->update_webhook_v1_webhooks_webhook_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **String** |  |  |
| **update_webhook_request** | [**UpdateWebhookRequest**](UpdateWebhookRequest.md) |  |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

