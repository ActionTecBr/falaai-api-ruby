# FalaAI::ParticipantDiagnostic

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **interlocutor** | **String** | Exact speaker label from the dialog (e.g. &#39;Speaker 1&#39;) |  |
| **role** | **String** | Role: agent | client | bot | agent_requester | agent_custodian |  |
| **name** | **String** | Participant name if mentioned in the dialogue | [optional] |
| **confidence** | **String** | high | medium | low | [optional] |
| **evidence** | **String** | Exact verbatim quote supporting the role (no timestamps) | [optional] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::ParticipantDiagnostic.new(
  interlocutor: Speaker 1,
  role: client,
  name: AntÃ´nio,
  confidence: high,
  evidence: TÃ¡ quarenta reais e setenta e um, AntÃ´nio.
)
```

