# FalaAI::AuditoriaRiscoDetectionsV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **violations** | [**Array&lt;AuditoriaRiscoDetectionItemV2&gt;**](AuditoriaRiscoDetectionItemV2.md) | Active violations | [optional] |
| **positives** | [**Array&lt;AuditoriaRiscoDetectionItemV2&gt;**](AuditoriaRiscoDetectionItemV2.md) | Active positives | [optional] |
| **client_risk_alerts** | **Array&lt;Hash&lt;String, Object&gt;&gt;** | Client risk alerts | [optional] |
| **client_behavior_alerts** | **Array&lt;Hash&lt;String, Object&gt;&gt;** | Client behavior alerts | [optional] |
| **client_negatives** | [**Array&lt;AuditoriaRiscoDetectionItemV2&gt;**](AuditoriaRiscoDetectionItemV2.md) | Client negatives | [optional] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::AuditoriaRiscoDetectionsV2.new(
  violations: null,
  positives: null,
  client_risk_alerts: null,
  client_behavior_alerts: null,
  client_negatives: null
)
```

