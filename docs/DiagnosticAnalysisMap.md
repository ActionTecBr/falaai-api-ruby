# FalaAI::DiagnosticAnalysisMap

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dialogue_summary** | [**DiagnosticTextAnalysis**](DiagnosticTextAnalysis.md) | Detailed conversation summary |  |
| **contact_reason** | [**DiagnosticTextAnalysis**](DiagnosticTextAnalysis.md) | Initial contact reason |  |
| **identified_action** | [**DiagnosticCategoricalAnalysis**](DiagnosticCategoricalAnalysis.md) | Action taken / resolution |  |
| **identified_label** | [**DiagnosticCategoricalAnalysis**](DiagnosticCategoricalAnalysis.md) | Theme classification |  |
| **sentiment** | [**DiagnosticCategoricalAnalysis**](DiagnosticCategoricalAnalysis.md) | Predominant sentiment |  |
| **participants_identified** | [**Array&lt;ParticipantDiagnostic&gt;**](ParticipantDiagnostic.md) | Identified participants and roles (same field names as auditoria) | [optional] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::DiagnosticAnalysisMap.new(
  dialogue_summary: null,
  contact_reason: null,
  identified_action: null,
  identified_label: null,
  sentiment: null,
  participants_identified: null
)
```

