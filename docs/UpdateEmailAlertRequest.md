# FalaAI::UpdateEmailAlertRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **events** | [**Array&lt;EmailEvent&gt;**](EmailEvent.md) |  | [optional] |
| **active** | **Boolean** |  | [optional] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::UpdateEmailAlertRequest.new(
  name: null,
  email: null,
  events: null,
  active: null
)
```

