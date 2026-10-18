# FalaAI::WhatsappPreviewItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | Stable id: yyyymmddhhmm-&lt;first speaker&gt;[-xN for &gt;2 speakers] |  |
| **first_at** | **String** | Conversation start (ISO) |  |
| **last_at** | **String** | Conversation end (ISO) |  |
| **duration_minutes** | **Float** | Conversation duration in minutes |  |
| **messages** | **Integer** | Messages in this conversation |  |
| **characters** | **Integer** | Characters of this conversation (estimate: media text is only replaced by tokens on extraction) |  |
| **media** | [**WhatsappPreviewItemMedia**](WhatsappPreviewItemMedia.md) | Media of this conversation |  |
| **credits** | [**WhatsappPreviewItemCredits**](WhatsappPreviewItemCredits.md) | Credits of this conversation |  |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::WhatsappPreviewItem.new(
  conversation_id: null,
  first_at: null,
  last_at: null,
  duration_minutes: null,
  messages: null,
  characters: null,
  media: null,
  credits: null
)
```

