# FalaAI::DiagnosticAudioEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | **String** | Audio event type. E.g.: [laughter], [sigh] |  |
| **start_s** | **Float** | Start time in seconds | [optional] |
| **end_s** | **Float** | End time in seconds | [optional] |
| **duration_s** | **Float** | Duration in seconds | [optional] |
| **formatted_timestamp** | **String** | Formatted timestamp (HH:MM:SS.ms) | [optional] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::DiagnosticAudioEvent.new(
  event: [laughter],
  start_s: 72.98,
  end_s: 74.34,
  duration_s: 1.36,
  formatted_timestamp: 00:01:12.980
)
```

