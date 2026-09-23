# FalaAI::AuditoriaRiscoTimelineV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **turns_sentiment** | **Array&lt;Hash&lt;String, Object&gt;&gt;** | Per-turn sentiment | [optional] |
| **audio_events** | **Array&lt;Hash&lt;String, Object&gt;&gt;** | Audio events (i18n) | [optional] |
| **audio_groups_found** | **Array&lt;Hash&lt;String, Object&gt;&gt;** | Audio groups found | [optional] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::AuditoriaRiscoTimelineV2.new(
  turns_sentiment: null,
  audio_events: null,
  audio_groups_found: null
)
```

