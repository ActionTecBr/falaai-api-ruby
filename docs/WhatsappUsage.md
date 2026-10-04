# FalaAI::WhatsappUsage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversations** | **Integer** | Number of conversations returned |  |
| **characters** | **Integer** | Total characters across conversations |  |
| **credits_consumed** | **Integer** | Credits consumed (1 per conversation) |  |
| **processing_ms** | **Integer** | Total processing time in milliseconds |  |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::WhatsappUsage.new(
  conversations: null,
  characters: null,
  credits_consumed: null,
  processing_ms: null
)
```

