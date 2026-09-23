# FalaAI::WebhooksApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhook_v1_webhooks_post**](WebhooksApi.md#create_webhook_v1_webhooks_post) | **POST** /v1/webhooks | Criar webhook de alertas |
| [**delete_webhook_v1_webhooks_webhook_id_delete**](WebhooksApi.md#delete_webhook_v1_webhooks_webhook_id_delete) | **DELETE** /v1/webhooks/{webhook_id} | Remover webhook |
| [**list_webhooks_v1_webhooks_get**](WebhooksApi.md#list_webhooks_v1_webhooks_get) | **GET** /v1/webhooks | Listar webhooks de alertas |
| [**update_webhook_v1_webhooks_webhook_id_put**](WebhooksApi.md#update_webhook_v1_webhooks_webhook_id_put) | **PUT** /v1/webhooks/{webhook_id} | Atualizar webhook |


## create_webhook_v1_webhooks_post

> <WebhookItem> create_webhook_v1_webhooks_post(create_webhook_request)

Criar webhook de alertas

Cria inscricao para eventos de alerta (10 alertas). Payload enviado: WebhookPayload(event, data, timestamp) com HMAC FalaAI-Signature. Para comprovar a origem, recalcule HMAC-SHA256 de \"timestamp.body\" com seu secret (exemplos: /examples/download/python.zip e nodejs.zip, arquivo webhook_verify).

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
create_webhook_request = FalaAI::CreateWebhookRequest.new({name: 'Alertas FalaAI', url: 'https://webhook.site/00000000-0000-0000-0000-000000000000', events: [credits.low,  credits.exhausted,  payment.failed]}) # CreateWebhookRequest | 

begin
  # Criar webhook de alertas
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
  # Criar webhook de alertas
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

Remover webhook

Remove inscricao de webhook por ID.

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
  # Remover webhook
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
  # Remover webhook
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

Listar webhooks de alertas

Lista webhooks do usuario autenticado (10 alertas). Paginado. Inclui o secret da assinatura da URL (sempre visivel ao dono).

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
  # Listar webhooks de alertas
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
  # Listar webhooks de alertas
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

Atualizar webhook

Atualiza name/url/events/retry_enabled/active do webhook. Eventos validos: 10 alertas.

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
  # Atualizar webhook
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
  # Atualizar webhook
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

