# FalaAI::UsageByKeyItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_id** | **String** | API key id |  |
| **key_name** | **String** | API key name |  |
| **total_credits** | **Integer** | Total credits consumed by the key |  |
| **request_count** | **Integer** | Number of requests |  |
| **last_used** | **String** | ISO 8601 of last use (null if never) | [optional] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::UsageByKeyItem.new(
  key_id: null,
  key_name: null,
  total_credits: null,
  request_count: null,
  last_used: null
)
```

