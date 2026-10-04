# FalaAI::WhatsappMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **String** | Uploaded file name |  |
| **chat_txt** | **String** | chat.txt entry name inside the export |  |
| **format** | **String** | Detected format: Android | iOS |  |
| **date_format** | **String** | Date order used |  |
| **timezone** | **String** | Timezone informed |  |
| **start** | **String** | Window start (ISO) |  |
| **_end** | **String** | Window end (ISO) |  |
| **gap_minutes** | **Float** | Gap used to split conversations |  |
| **min_messages** | **Integer** | Minimum messages per conversation |  |
| **chars_per_minute** | **Float** | Chars per minute used to estimate duration |  |
| **turns** | **Integer** | Total parsed turns |  |
| **system_lines** | **Integer** | System lines ignored |  |
| **conversations_total** | **Integer** | Conversations before window filter |  |
| **conversations_in_window** | **Integer** | Conversations overlapping the window |  |
| **monologues_dropped** | **Integer** | Single-speaker conversations dropped |  |
| **conversations_selected** | **Integer** | Final conversations returned |  |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::WhatsappMeta.new(
  file: null,
  chat_txt: null,
  format: null,
  date_format: null,
  timezone: null,
  start: null,
  _end: null,
  gap_minutes: null,
  min_messages: null,
  chars_per_minute: null,
  turns: null,
  system_lines: null,
  conversations_total: null,
  conversations_in_window: null,
  monologues_dropped: null,
  conversations_selected: null
)
```

