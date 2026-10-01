# FalaAI::UpdateWebhookRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Nome identificador | [optional] |
| **url** | **String** | URL HTTPS destino | [optional] |
| **events** | [**Array&lt;WebhookEvent&gt;**](WebhookEvent.md) | Eventos subscritos | [optional] |
| **retry_enabled** | **Boolean** | Habilita retry exponencial | [optional] |
| **active** | **Boolean** | Ativa/desativa sem deletar | [optional] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::UpdateWebhookRequest.new(
  name: null,
  url: null,
  events: null,
  retry_enabled: null,
  active: null
)
```

