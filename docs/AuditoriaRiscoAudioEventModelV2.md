# FalaAI::AuditoriaRiscoAudioEventModelV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model** | **String** | MAC model text (i18n) | [optional][default to &#39;&#39;] |
| **description** | **String** | MAC description (i18n) | [optional][default to &#39;&#39;] |
| **windows_s** | **Hash&lt;String, Object&gt;** | Temporal windows (s) | [optional] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::AuditoriaRiscoAudioEventModelV2.new(
  model: null,
  description: null,
  windows_s: null
)
```

