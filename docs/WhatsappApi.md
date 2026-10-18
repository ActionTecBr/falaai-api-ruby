# FalaAI::WhatsappApi

All URIs are relative to *https://api01-falaai.action.tec.br*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**extract_conversations_v1_whatsapp_extract_conversations_post**](WhatsappApi.md#extract_conversations_v1_whatsapp_extract_conversations_post) | **POST** /v1/whatsapp/extractConversations | Extract and segment WhatsApp conversations from an export |


## extract_conversations_v1_whatsapp_extract_conversations_post

> <ResponseExtractConversationsV1WhatsappExtractconversationsPost> extract_conversations_v1_whatsapp_extract_conversations_post(file, timezone, date_format, opts)

Extract and segment WhatsApp conversations from an export

Extracts and segments the conversations of a WhatsApp export (.zip or .txt containing chat.txt in UTF-8 with at least one turn) and, unless it is a preview, resolves each selected conversation with AI by transcribing voice/audio/video notes and describing visual expressions, returning the segmented conversations with speakers, dialogs, counts and usage. Use dry_run=true for a PREVIEW: it validates the file, segments the conversations, counts media and ESTIMATES the credits WITHOUT calling the AI and WITHOUT charging (credits_charged=0), returning object whatsapp_preview with credits_total, the params actually used, the windows, per-conversation items and warnings. The window is given either as a single start/end pair or as windows, a JSON string holding a non-empty list of sub-objects each with start and end; windows must not be combined with start/end, and a windows selection is the deduplicated chronological union of the overlaps, which bypasses the noise filter and keeps conversations that are monologues or below min_messages, while for a single window sending only one of start/end is rejected and empty/all-zeros values select the real period of the export, both being allowed to be omitted in dry_run while outside dry_run both absent is rejected. timezone and date_format are required, where date_format must be day_first, month_first or year_first. gap_minutes is optional (default 720) and splits conversations on idle gaps, min_messages is optional (default 2) and is the minimum messages kept per conversation outside the explicit windows selection, voice_note is optional (default true) and turns voice/audio/video media into text, expression is optional (default true) and describes visual expressions (figurinha, GIF, emoji), and client_reference_id is optional, echoed verbatim, charset A-Za-z0-9 space _/:.- up to 60 chars. Billing outside the preview is 0.15 credit per conversation plus 0.15 per figurinha, 0.18 per GIF and 0.1 per emoji (only with expression=true) plus 0.19 per second of voice/audio/video (only with voice_note=true), rounded to 2 decimals with no rounding up, and the preview credits_total is the same exact sum with 2 decimals; files are limited to 1GB and the endpoint is stateless (export and media processed in memory, temporary files removed, nothing persisted), returning object conversations with id (wc-), usage and the conversations (conversation_id, first_at, last_at, duration_seconds, speakers, dialog, message_count, characters) plus meta.

### Examples

```ruby
require 'time'
require 'falaai-api'
# setup authorization
FalaAI.configure do |config|
  # Configure Bearer authorization (fai_xxx): ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FalaAI::WhatsappApi.new
file = File.new('/path/to/some/file') # File | 
timezone = 'timezone_example' # String | 
date_format = 'date_format_example' # String | 
opts = {
  start: 'start_example', # String | Inicio da janela. Obrigatorio fora do dry_run; no dry_run ausente = primeiro turno do export.
  _end: '_end_example', # String | Fim da janela. Obrigatorio fora do dry_run; no dry_run ausente = ultimo turno do export.
  windows: 'windows_example', # String | Selecao explicita por varias janelas: JSON [{\\\"start\\\":\\\"...\\\",\\\"end\\\":\\\"...\\\"}]. Nao combinar com 'start'/'end'.
  gap_minutes: 8.14, # Float | 
  min_messages: 56, # Integer | 
  voice_note: true, # Boolean | Transcrever mensagens de voz/video gravadas na hora?
  expression: true, # Boolean | Descrever expressoes visuais (figurinha/GIF/imagem)?
  dry_run: true, # Boolean | So analisa o arquivo: valida, segmenta e ESTIMA os creditos SEM chamar a IA e SEM debitar (credits_charged=0).
  client_reference_id: 'client_reference_id_example' # String | 
}

begin
  # Extract and segment WhatsApp conversations from an export
  result = api_instance.extract_conversations_v1_whatsapp_extract_conversations_post(file, timezone, date_format, opts)
  p result
rescue FalaAI::ApiError => e
  puts "Error when calling WhatsappApi->extract_conversations_v1_whatsapp_extract_conversations_post: #{e}"
end
```

#### Using the extract_conversations_v1_whatsapp_extract_conversations_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseExtractConversationsV1WhatsappExtractconversationsPost>, Integer, Hash)> extract_conversations_v1_whatsapp_extract_conversations_post_with_http_info(file, timezone, date_format, opts)

```ruby
begin
  # Extract and segment WhatsApp conversations from an export
  data, status_code, headers = api_instance.extract_conversations_v1_whatsapp_extract_conversations_post_with_http_info(file, timezone, date_format, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseExtractConversationsV1WhatsappExtractconversationsPost>
rescue FalaAI::ApiError => e
  puts "Error when calling WhatsappApi->extract_conversations_v1_whatsapp_extract_conversations_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** |  |  |
| **timezone** | **String** |  |  |
| **date_format** | **String** |  |  |
| **start** | **String** | Inicio da janela. Obrigatorio fora do dry_run; no dry_run ausente &#x3D; primeiro turno do export. | [optional] |
| **_end** | **String** | Fim da janela. Obrigatorio fora do dry_run; no dry_run ausente &#x3D; ultimo turno do export. | [optional] |
| **windows** | **String** | Selecao explicita por varias janelas: JSON [{\\\&quot;start\\\&quot;:\\\&quot;...\\\&quot;,\\\&quot;end\\\&quot;:\\\&quot;...\\\&quot;}]. Nao combinar com &#39;start&#39;/&#39;end&#39;. | [optional] |
| **gap_minutes** | **Float** |  | [optional][default to 720] |
| **min_messages** | **Integer** |  | [optional][default to 2] |
| **voice_note** | **Boolean** | Transcrever mensagens de voz/video gravadas na hora? | [optional][default to true] |
| **expression** | **Boolean** | Descrever expressoes visuais (figurinha/GIF/imagem)? | [optional][default to true] |
| **dry_run** | **Boolean** | So analisa o arquivo: valida, segmenta e ESTIMA os creditos SEM chamar a IA e SEM debitar (credits_charged&#x3D;0). | [optional][default to false] |
| **client_reference_id** | **String** |  | [optional] |

### Return type

[**ResponseExtractConversationsV1WhatsappExtractconversationsPost**](ResponseExtractConversationsV1WhatsappExtractconversationsPost.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

