# FalaAI::AuditoriaRiscoScoresV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation** | [**AuditoriaRiscoConversationScoresV2**](AuditoriaRiscoConversationScoresV2.md) | Conversation scores |  |
| **per_participant** | **Hash&lt;String, Object&gt;** | Per-participant KPIs | [optional] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::AuditoriaRiscoScoresV2.new(
  conversation: null,
  per_participant: null
)
```

