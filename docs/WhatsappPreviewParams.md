# FalaAI::WhatsappPreviewParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **String** | Window start actually used (file period when start/end are omitted in dry_run) |  |
| **_end** | **String** | Window end actually used (file period when start/end are omitted in dry_run) |  |
| **timezone** | **String** | Timezone informed |  |
| **date_format** | **String** | Date order used |  |
| **gap_minutes** | **Float** | Gap used to split conversations |  |
| **min_messages** | **Integer** | Minimum messages per conversation |  |
| **voice_note** | **Boolean** | Voice/video medias would be transcribed (charge flag) |  |
| **expression** | **Boolean** | Visual expressions would be described (charge flag) |  |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::WhatsappPreviewParams.new(
  start: null,
  _end: null,
  timezone: null,
  date_format: null,
  gap_minutes: null,
  min_messages: null,
  voice_note: null,
  expression: null
)
```

