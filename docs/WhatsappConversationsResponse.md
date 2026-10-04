# FalaAI::WhatsappConversationsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier. Prefix &#39;wc-&#39; + UUID |  |
| **object** | **String** | Object type. Always &#39;conversations&#39; |  |
| **usage** | [**WhatsappUsage**](WhatsappUsage.md) | Usage and processing information |  |
| **conversations** | [**Array&lt;WhatsappConversation&gt;**](WhatsappConversation.md) | Segmented conversations |  |
| **client_reference_id** | **String** | Client-supplied ID echoed verbatim (if provided) | [optional] |
| **meta** | [**WhatsappMeta**](WhatsappMeta.md) | Segmentation parameters and counts |  |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::WhatsappConversationsResponse.new(
  id: null,
  object: null,
  usage: null,
  conversations: null,
  client_reference_id: null,
  meta: null
)
```

