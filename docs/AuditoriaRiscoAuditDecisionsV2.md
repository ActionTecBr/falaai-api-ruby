# FalaAI::AuditoriaRiscoAuditDecisionsV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **risk_origin** | **String** | Risk origin | [optional] |
| **has_zero_tolerance_violation** | **Boolean** | Has zero-tolerance violation | [optional] |
| **deterministic_validator_changes** | **Array&lt;Object&gt;** | Deterministic validator changes | [optional] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::AuditoriaRiscoAuditDecisionsV2.new(
  risk_origin: null,
  has_zero_tolerance_violation: null,
  deterministic_validator_changes: null
)
```

