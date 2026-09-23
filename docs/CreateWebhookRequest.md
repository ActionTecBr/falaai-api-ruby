# FalaAI::CreateWebhookRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Nome identificador do webhook |  |
| **url** | **String** | URL HTTPS que recebera POST com HMAC FalaAI-Signature |  |
| **events** | [**Array&lt;WebhookEvent&gt;**](WebhookEvent.md) | Eventos subscritos (10 alertas) |  |
| **retry_enabled** | **Boolean** | Retry exponencial 5 tentativas quando true (false&#x3D;1 tentativa) | [optional][default to false] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::CreateWebhookRequest.new(
  name: Alertas FalaAI,
  url: https://webhook.site/00000000-0000-0000-0000-000000000000,
  events: [credits.low, credits.exhausted, payment.failed],
  retry_enabled: false
)
```

