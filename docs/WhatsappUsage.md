# FalaAI::WhatsappUsage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversations** | **Integer** | Number of conversations returned |  |
| **characters** | **Integer** | Total characters across conversations |  |
| **expressions** | **Integer** | Chargeable expression occurrences (figurinha+GIF+emoji); 0 quando expression&#x3D;false |  |
| **expressions_figurinha** | **Integer** | Figurinha occurrences (cobra 0,15 cada quando expression&#x3D;true) |  |
| **expressions_gif** | **Integer** | GIF occurrences (cobra 0,18 cada quando expression&#x3D;true) |  |
| **expressions_emoji** | **Integer** | Emoji occurrences (cobra 0,1 cada quando expression&#x3D;true) |  |
| **voice_notes** | **Integer** | Voice notes (PTT) resolved to text |  |
| **conversation_credits** | **Float** | Credits for conversations (0,15 each) |  |
| **expression_credits** | **Float** | Credits for expressions (figurinha 0,15 / GIF 0,18 / emoji 0,1) |  |
| **audio_credits** | **Float** | Credits for transcribed voice seconds (0,19 per second; 0 quando voice_note&#x3D;false) |  |
| **credits_consumed** | **Float** | Total credits &#x3D; round(conversation_credits + expression_credits + audio_credits, 2) |  |
| **processing_ms** | **Integer** | Total processing time in milliseconds |  |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::WhatsappUsage.new(
  conversations: null,
  characters: null,
  expressions: null,
  expressions_figurinha: null,
  expressions_gif: null,
  expressions_emoji: null,
  voice_notes: null,
  conversation_credits: null,
  expression_credits: null,
  audio_credits: null,
  credits_consumed: null,
  processing_ms: null
)
```

