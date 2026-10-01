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
  id: null,
  response_language: null,
  object: null,
  analysis: null,
  usage: null,
  client_reference_id: null
)
```

