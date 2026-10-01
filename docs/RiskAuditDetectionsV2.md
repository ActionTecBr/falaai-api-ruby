# FalaAI::RiskAuditDetectionsV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **violations** | [**Array&lt;RiskAuditDetectionItemV2&gt;**](RiskAuditDetectionItemV2.md) | Active violations | [optional] |
| **positives** | [**Array&lt;RiskAuditDetectionItemV2&gt;**](RiskAuditDetectionItemV2.md) | Active positives | [optional] |
| **client_risk_alerts** | **Array&lt;Hash&lt;String, Object&gt;&gt;** | Client risk alerts | [optional] |
| **client_behavior_alerts** | **Array&lt;Hash&lt;String, Object&gt;&gt;** | Client behavior alerts | [optional] |
| **client_negatives** | [**Array&lt;RiskAuditDetectionItemV2&gt;**](RiskAuditDetectionItemV2.md) | Client negatives | [optional] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::RiskAuditDetectionsV2.new(
  violations: null,
  positives: null,
  client_risk_alerts: null,
  client_behavior_alerts: null,
  client_negatives: null
)
```

