# FalaAI::RiskAuditDetectionItemV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **turn** | **Integer** | Turn number | [optional] |
| **interlocutor** | **String** | Speaker | [optional] |
| **role** | **String** | Role | [optional] |
| **timestamp_formatted** | **String** | Formatted timestamp | [optional] |
| **term_text** | **String** | Detected term | [optional] |
| **category_label** | **String** | Category label (i18n) |  |
| **subcategory_label** | **String** | Subcategory label (i18n) | [optional] |
| **criticality** | **String** | Criticality | [optional] |
| **status** | **String** | Status | [optional] |
| **reason** | **String** | Reason | [optional] |
| **final_score** | **Float** | Final score | [optional] |
| **violated_frameworks** | **Array&lt;Object&gt;** | Violated frameworks | [optional] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::RiskAuditDetectionItemV2.new(
  turn: null,
  interlocutor: null,
  role: null,
  timestamp_formatted: null,
  term_text: null,
  category_label: null,
  subcategory_label: null,
  criticality: null,
  status: null,
  reason: null,
  final_score: null,
  violated_frameworks: null
)
```

