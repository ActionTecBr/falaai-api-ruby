# FalaAI::RiskAuditScoresV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation** | [**RiskAuditConversationScoresV2**](RiskAuditConversationScoresV2.md) | Conversation scores |  |
| **per_participant** | **Hash&lt;String, Object&gt;** | Per-participant KPIs | [optional] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::RiskAuditScoresV2.new(
  conversation: null,
  per_participant: null
)
```

