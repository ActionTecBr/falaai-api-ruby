# FalaAI::UsageLogItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Usage log entry id |  |
| **endpoint** | **String** | Endpoint called |  |
| **credits_cost** | **Integer** | Credits consumed |  |
| **status** | **String** | Result status |  |
| **errors_count** | **Integer** | Errors count |  |
| **created_at** | **String** | ISO 8601 timestamp |  |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::UsageLogItem.new(
  id: null,
  endpoint: null,
  credits_cost: null,
  status: null,
  errors_count: null,
  created_at: null
)
```

