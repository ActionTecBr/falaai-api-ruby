# FalaAI::TranscriptionUsage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **audio_seconds** | **Float** | Actual audio duration processed in seconds |  |
| **credits_consumed** | **Integer** | Number of credits consumed in this request |  |
| **processing_ms** | **Integer** | Total processing time in milliseconds |  |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::TranscriptionUsage.new(
  audio_seconds: 151.04,
  credits_consumed: 65,
  processing_ms: 15156
)
```

