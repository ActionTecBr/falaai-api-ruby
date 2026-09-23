# FalaAI::Participant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **interlocutor** | **String** | Exact identifier as used in dialog (e.g. &#39;Interlocutor 1&#39;, &#39;Antonio&#39;) |  |
| **name** | **String** | Participant name (humanizes report, does not affect logic) | [optional] |
| **role** | **String** | Role: agent (human operator), client (customer), bot (IVR/AI) |  |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::Participant.new(
  interlocutor: Interlocutor 1,
  name: Maria,
  role: null
)
```

