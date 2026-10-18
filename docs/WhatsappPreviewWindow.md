# FalaAI::WhatsappPreviewWindow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **String** | Window start used |  |
| **_end** | **String** | Window end used |  |
| **selected** | **Integer** | Conversations matched by THIS window (before the union dedupe) |  |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::WhatsappPreviewWindow.new(
  start: null,
  _end: null,
  selected: null
)
```

