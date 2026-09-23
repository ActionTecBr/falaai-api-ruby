# FalaAI::AuditoriaRiscoAppliedActionV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_type** | **String** | Action type code |  |
| **label** | **String** | Action label |  |
| **description** | **String** | Action description |  |
| **priority** | **String** | CRITICO/ALTO/MEDIO/BAIXO |  |
| **color** | **String** | Color | [optional][default to &#39;&#39;] |
| **icon** | **String** | Icon | [optional][default to &#39;&#39;] |
| **condition** | **String** | Condition | [optional] |
| **reason** | **String** | Reason | [optional][default to &#39;&#39;] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::AuditoriaRiscoAppliedActionV2.new(
  action_type: null,
  label: null,
  description: null,
  priority: null,
  color: null,
  icon: null,
  condition: null,
  reason: null
)
```

