# FalaAI::WhatsappUsage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversations** | **Integer** | Number of conversations returned |  |
| **characters** | **Integer** | Total characters across conversations |  |
| **expressions** | **Integer** | Expression tokens across conversations (sticker/emoji/gif) |  |
| **voice_notes** | **Integer** | Voice notes (PTT) resolved to text |  |
| **conversation_credits** | **Integer** | Credits for conversations (2 each) |  |
| **expression_credits** | **Float** | Credits for expressions (0.2 each) |  |
| **audio_credits** | **Float** | Credits for audio duration (0.2 per second) |  |
| **credits_consumed** | **Integer** | Total credits &#x3D; ceil(conversation_credits + expression_credits + audio_credits) |  |
| **processing_ms** | **Integer** | Total processing time in milliseconds |  |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::WhatsappUsage.new(
  conversations: null,
  characters: null,
  expressions: null,
  voice_notes: null,
  conversation_credits: null,
  expression_credits: null,
  audio_credits: null,
  credits_consumed: null,
  processing_ms: null
)
```

