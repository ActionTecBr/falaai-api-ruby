# FalaAI::WebhookItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Webhook id |  |
| **user_id** | **String** | Owner user id |  |
| **name** | **String** | Webhook name |  |
| **url** | **String** | Destination URL |  |
| **secret** | **String** | HMAC signing secret |  |
| **events** | **Array&lt;String&gt;** | Subscribed events |  |
| **active** | **Boolean** | Is active |  |
| **retry_enabled** | **Boolean** | Retry enabled |  |
| **last_delivery_at** | **String** | ISO 8601 of last delivery | [optional] |
| **last_status** | **Integer** | Last HTTP status delivered | [optional] |
| **failure_count** | **Integer** | Consecutive failures | [optional][default to 0] |
| **created_at** | **String** | ISO 8601 created |  |
| **updated_at** | **String** | ISO 8601 updated |  |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::WebhookItem.new(
  id: null,
  user_id: null,
  name: null,
  url: null,
  secret: null,
  events: null,
  active: null,
  retry_enabled: null,
  last_delivery_at: null,
  last_status: null,
  failure_count: null,
  created_at: null,
  updated_at: null
)
```

