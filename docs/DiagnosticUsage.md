# FalaAI::DiagnosticUsage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **characters** | **Integer** | Total characters analyzed |  |
| **credits_consumed** | **Float** | Credits consumed: per character, round(max(characters, 500) * 0.03, 2) |  |
| **processing_ms** | **Integer** | Total processing time in milliseconds |  |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::DiagnosticUsage.new(
  characters: null,
  credits_consumed: null,
  processing_ms: null
)
```

