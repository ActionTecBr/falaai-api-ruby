# FalaAI::CreateEmailAlertRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Nome identificador |  |
| **email** | **String** | Email destino |  |
| **events** | [**Array&lt;EmailEvent&gt;**](EmailEvent.md) | Eventos subscritos |  |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::CreateEmailAlertRequest.new(
  name: null,
  email: null,
  events: null
)
```

