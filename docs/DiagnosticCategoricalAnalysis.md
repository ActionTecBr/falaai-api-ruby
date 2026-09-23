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
  list_choice: Informative,
  justification: Information about required documentation was provided,
  evidence_phrases: [[00:01:36.640 - 00:02:02.659] No, same thing: proof of address...]
)
```

