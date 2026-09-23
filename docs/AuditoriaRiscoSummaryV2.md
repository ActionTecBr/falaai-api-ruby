# FalaAI::AuditoriaRiscoSummaryV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_turns** | **Integer** | Total turns | [optional] |
| **total_calibrated** | **Integer** | Total calibrated detections | [optional] |
| **active** | **Integer** | Active detections | [optional] |
| **tolerated** | **Integer** | Tolerated detections | [optional] |
| **blocked** | **Integer** | Blocked detections | [optional] |
| **audio_events_used** | **Integer** | Audio events used | [optional] |
| **audio_events_aggravated** | **Integer** | Audio events aggravated | [optional] |
| **mac_audio_applied** | **Object** | MAC audio applied | [optional] |
| **mvad_applied** | **Object** | MVAD applied | [optional] |
| **total_participants** | **Integer** | Total participants | [optional] |
| **total_agents** | **Integer** | Total agents | [optional] |
| **total_clients** | **Integer** | Total clients | [optional] |
| **total_bots** | **Integer** | Total bots | [optional] |
| **total_unknown** | **Integer** | Total unknown | [optional] |
| **client_risk_alerts_count** | **Integer** | Client risk alerts count | [optional] |
| **client_behavior_alerts_count** | **Integer** | Client behavior alerts count | [optional] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::AuditoriaRiscoSummaryV2.new(
  total_turns: null,
  total_calibrated: null,
  active: null,
  tolerated: null,
  blocked: null,
  audio_events_used: null,
  audio_events_aggravated: null,
  mac_audio_applied: null,
  mvad_applied: null,
  total_participants: null,
  total_agents: null,
  total_clients: null,
  total_bots: null,
  total_unknown: null,
  client_risk_alerts_count: null,
  client_behavior_alerts_count: null
)
```

