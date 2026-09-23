# FalaAI::AuditoriaRiscoConversationScoresV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **consolidated_score** | **Float** | Consolidated score | [optional] |
| **violation_density_per_min** | **Float** | Violation density/min | [optional] |
| **sentiment_trend** | **Object** | Sentiment trend | [optional] |
| **pct_turns_with_violation** | **Float** | % turns with violation | [optional] |
| **most_critical_turn** | **Object** | Most critical turn | [optional] |
| **positive_negative_ratio** | **Object** | Positive:negative ratio | [optional] |
| **global_risk_severity** | **String** | Global risk severity code | [optional] |
| **global_risk_severity_label** | **String** | Global risk severity label | [optional] |
| **global_risk_severity_color** | **String** | Global risk severity color | [optional] |
| **risk_likelihood_avg** | **Float** | Risk likelihood avg | [optional] |
| **risk_impact_avg** | **Float** | Risk impact avg | [optional] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::AuditoriaRiscoConversationScoresV2.new(
  consolidated_score: null,
  violation_density_per_min: null,
  sentiment_trend: null,
  pct_turns_with_violation: null,
  most_critical_turn: null,
  positive_negative_ratio: null,
  global_risk_severity: null,
  global_risk_severity_label: null,
  global_risk_severity_color: null,
  risk_likelihood_avg: null,
  risk_impact_avg: null
)
```

