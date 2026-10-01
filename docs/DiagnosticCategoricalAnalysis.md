# FalaAI::DiagnosticCategoricalAnalysis

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_choice** | **String** | Selected value from classification list (used in action, label, sentiment) | [optional] |
| **justification** | **String** | Justification for the choice | [optional] |
| **evidence_phrases** | **Array&lt;String&gt;** | Verbatim transcript excerpts supporting the analysis | [optional] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::DiagnosticCategoricalAnalysis.new(
  list_choice: null,
  justification: null,
  evidence_phrases: null
)
```

