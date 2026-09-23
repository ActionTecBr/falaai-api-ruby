# FalaAI::AuditoriaRiscoAnalysisV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **global_metrics** | **Hash&lt;String, Object&gt;** | Global metrics | [optional] |
| **final_analysis** | **Hash&lt;String, Object&gt;** | Final analysis | [optional] |
| **frameworks** | **Hash&lt;String, Object&gt;** | Frameworks (COPC/ISO/Kirkpatrick/CES) | [optional] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::AuditoriaRiscoAnalysisV2.new(
  global_metrics: null,
  final_analysis: null,
  frameworks: null
)
```

