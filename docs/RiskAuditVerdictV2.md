# FalaAI::RiskAuditVerdictV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | Human-readable verdict | [optional] |
| **level_code** | **String** | Classification level code | [optional] |
| **risk_matrix** | **Hash&lt;String, Object&gt;** | Risk matrix | [optional] |
| **applied_actions** | [**Array&lt;RiskAuditAppliedActionV2&gt;**](RiskAuditAppliedActionV2.md) | Applied actions | [optional] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::RiskAuditVerdictV2.new(
  label: null,
  level_code: null,
  risk_matrix: null,
  applied_actions: null
)
```

