# FalaAI::EmailAlertItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Email alert id |  |
| **user_id** | **String** | Owner user id |  |
| **name** | **String** | Email alert name |  |
| **email** | **String** | Destination email |  |
| **events** | **Array&lt;String&gt;** | Subscribed events |  |
| **active** | **Boolean** | Is active |  |
| **created_at** | **String** | ISO 8601 created |  |
| **updated_at** | **String** | ISO 8601 updated |  |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::EmailAlertItem.new(
  id: null,
  user_id: null,
  name: null,
  email: null,
  events: null,
  active: null,
  created_at: null,
  updated_at: null
)
```

