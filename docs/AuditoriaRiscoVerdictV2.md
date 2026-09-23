# FalaAI::AuditoriaRiscoVerdictV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | Human-readable verdict | [optional] |
| **level_code** | **String** | Classification level code | [optional] |
| **color** | **String** | Level color | [optional] |
| **icon** | **String** | Level icon | [optional] |
| **risk_matrix** | **Hash&lt;String, Object&gt;** | Risk matrix | [optional] |
| **applied_actions** | [**Array&lt;AuditoriaRiscoAppliedActionV2&gt;**](AuditoriaRiscoAppliedActionV2.md) | Applied actions | [optional] |
| **decision_details** | **Object** | Decision details | [optional] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::AuditoriaRiscoVerdictV2.new(
  label: null,
  level_code: null,
  color: null,
  icon: null,
  risk_matrix: null,
  applied_actions: null,
  decision_details: null
)
```

