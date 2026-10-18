# FalaAI::WhatsappPreviewItemCredits

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Float** | Credits of THIS conversation (2 decimals, exact fraction — the charge is ONE ceil on the batch total) |  |
| **breakdown** | [**WhatsappPreviewItemBreakdown**](WhatsappPreviewItemBreakdown.md) | Credits by component for THIS conversation |  |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::WhatsappPreviewItemCredits.new(
  total: null,
  breakdown: null
)
```

