# FalaAI::DiagnosticUsage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **characters** | **Integer** | Total characters analyzed |  |
| **credits_consumed** | **Integer** | Credits consumed: max(ceil(chars/500)*3, 3) * 5 |  |
| **processing_ms** | **Integer** | Total processing time in milliseconds |  |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::DiagnosticUsage.new(
  characters: 3946,
  credits_consumed: 15,
  processing_ms: 6800
)
```

