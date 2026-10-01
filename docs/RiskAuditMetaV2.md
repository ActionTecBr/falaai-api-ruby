# FalaAI::RiskAuditMetaV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Analysis id |  |
| **object** | **String** | Object type | [optional][default to &#39;risk_audit&#39;] |
| **call_duration_s** | **Float** | Call duration (s) | [optional] |
| **analyzed_at** | **String** | ISO 8601 analyzed timestamp | [optional] |
| **usage** | [**RiskAuditUsageV2**](RiskAuditUsageV2.md) | Usage block |  |
| **client_reference_id** | **String** | Echoed client reference id | [optional] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::RiskAuditMetaV2.new(
  id: null,
  object: null,
  call_duration_s: null,
  analyzed_at: null,
  usage: null,
  client_reference_id: null
)
```

