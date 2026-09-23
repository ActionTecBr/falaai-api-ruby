# FalaAI::DiagnosticResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique analysis identifier. Prefix &#39;di-&#39; + UUID |  |
| **response_language** | **String** | Language used in the response. E.g.: &#39;pt-BR&#39;, &#39;en-US&#39;, &#39;es-ES&#39; |  |
| **object** | **String** | Object type. Always &#39;analysis&#39; |  |
| **analysis** | [**DiagnosticAnalysisMap**](DiagnosticAnalysisMap.md) | The 6 conversation analyses (5 + participants) |  |
| **usage** | [**DiagnosticUsage**](DiagnosticUsage.md) | Usage and processing information |  |
| **client_reference_id** | **String** | Client-supplied ID echoed verbatim (if provided in request) | [optional] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::DiagnosticResponse.new(
  id: di-550e8400-e29b-41d4-a716-446655440000,
  response_language: pt-BR,
  object: analysis,
  analysis: null,
  usage: null,
  client_reference_id: call-2026-08-30-001
)
```

