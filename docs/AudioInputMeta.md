# FalaAI::AudioInputMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **duration_s** | **Float** | Exact audio duration sent in seconds |  |
| **original_format** | **String** | Original file format (wav, mp3, ogg, etc) |  |
| **codec** | **String** | Audio codec sent |  |
| **sample_rate** | **Integer** | Audio sample rate in Hz |  |
| **channels** | **Integer** | Number of channels (1&#x3D;mono, 2&#x3D;stereo) |  |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::AudioInputMeta.new(
  duration_s: null,
  original_format: null,
  codec: null,
  sample_rate: null,
  channels: null
)
```

