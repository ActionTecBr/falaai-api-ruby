# FalaAI::AuditoriaRiscoParticipantsV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identified** | [**Array&lt;AuditoriaRiscoParticipantV2&gt;**](AuditoriaRiscoParticipantV2.md) | Identified participants | [optional] |
| **call_direction** | **String** | inbound/outbound | [optional] |
| **role_inference_reliable** | **Boolean** | Role inference reliability | [optional][default to true] |
| **identification_status** | **String** | Identification status | [optional][default to &#39;none&#39;] |
| **unidentified_items_count** | **Integer** | Unidentified items count | [optional][default to 0] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::AuditoriaRiscoParticipantsV2.new(
  identified: null,
  call_direction: null,
  role_inference_reliable: null,
  identification_status: null,
  unidentified_items_count: null
)
```

