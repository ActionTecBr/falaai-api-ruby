# FalaAI::WhatsappPreviewResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | Object type. Always &#39;whatsapp_preview&#39; |  |
| **dry_run** | **Boolean** | Always true (preview: no AI call, no charge) |  |
| **credits_charged** | **Integer** | Always 0 in preview |  |
| **credits_total** | **Float** | TOTAL credits &#x3D; exact SUM of the selected conversations (2 decimals, NO rounding up) |  |
| **params** | [**WhatsappPreviewParams**](WhatsappPreviewParams.md) | Filter parameters actually used (reuse them in the extraction) |  |
| **windows** | [**Array&lt;WhatsappPreviewWindow&gt;**](WhatsappPreviewWindow.md) | Explicit windows used (empty when a single start/end range was used) |  |
| **items** | [**Array&lt;WhatsappPreviewItem&gt;**](WhatsappPreviewItem.md) | Per-conversation detail (send back as &#x60;windows&#x60; to extract only what you want) |  |
| **warnings** | **Array&lt;String&gt;** | Human-readable notices about what would be ignored |  |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::WhatsappPreviewResponse.new(
  object: null,
  dry_run: null,
  credits_charged: null,
  credits_total: null,
  params: null,
  windows: null,
  items: null,
  warnings: null
)
```

