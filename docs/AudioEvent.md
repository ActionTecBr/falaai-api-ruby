# FalaAI::AudioEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | **String** | Type of identified audio event. Ex: [riso], [suspiro], [pausa], [tosse] |  |
| **start_s** | **Float** | Start time of audio event in seconds |  |
| **end_s** | **Float** | End time of audio event in seconds |  |
| **duration_s** | **Float** | Event duration in seconds |  |
| **formatted_timestamp** | **String** | Formatted timestamp HH:MM:SS.mmm of event start |  |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::AudioEvent.new(
  event: [suspiro],
  start_s: 75.42,
  end_s: 75.43,
  duration_s: 0.01,
  formatted_timestamp: 00:01:15.420
)
```

