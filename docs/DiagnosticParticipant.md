# FalaAI::DiagnosticParticipant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **interlocutor** | **String** | Exact speaker label from the dialog (e.g. &#39;Speaker 1&#39;) |  |
| **name** | **String** | Participant name (optional) | [optional] |
| **role** | **String** | agent | client | bot |  |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::DiagnosticParticipant.new(
  interlocutor: null,
  name: null,
  role: null
)
```

