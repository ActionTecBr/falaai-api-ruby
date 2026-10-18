# FalaAI::WhatsappPreviewItemMedia

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **figurinha** | **Integer** | Figurinha occurrences in this conversation (0 quando expression&#x3D;false) |  |
| **gif** | **Integer** | GIF occurrences in this conversation (0 quando expression&#x3D;false) |  |
| **emoji** | **Integer** | Emoji occurrences in this conversation (0 quando expression&#x3D;false) |  |
| **ptt** | **Integer** | Voice/audio/video turns in this conversation (cobra 0,19/segundo SO quando voice_note&#x3D;true) |  |
| **ptt_seconds** | **Float** | Voice/video SECONDS counted in this conversation (0 quando voice_note&#x3D;false) |  |
| **anexos** | **Integer** | Image/document turns in this conversation (ANEXO: nunca cobrado) |  |
| **by_type** | **Hash&lt;String, Integer&gt;** | Media turns by type in THIS conversation (voz/audio/video/imagem/figurinha/gif/arquivo/oculta/chamada) |  |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::WhatsappPreviewItemMedia.new(
  figurinha: null,
  gif: null,
  emoji: null,
  ptt: null,
  ptt_seconds: null,
  anexos: null,
  by_type: null
)
```

