# FalaAI::WhatsappConversation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | Conversation identifier in the batch |  |
| **first_at** | **String** | Real start (wall-clock, ISO) |  |
| **last_at** | **String** | Real end (wall-clock, ISO) |  |
| **duration_seconds** | **Float** | (last - first) + last turn duration |  |
| **speakers** | [**Array&lt;WhatsappSpeaker&gt;**](WhatsappSpeaker.md) | Speakers of THIS conversation (dynamic) |  |
| **dialog** | **String** | Lines &#39;Speaker N: [HH:MM:SS.mmm - HH:MM:SS.mmm] text&#39; (real offset) |  |
| **message_count** | **Integer** | Number of messages |  |
| **characters** | **Integer** | Total characters of the conversation |  |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::WhatsappConversation.new(
  conversation_id: null,
  first_at: null,
  last_at: null,
  duration_seconds: null,
  speakers: null,
  dialog: null,
  message_count: null,
  characters: null
)
```

