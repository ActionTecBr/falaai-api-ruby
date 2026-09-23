# FalaAI::AnalysisApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_auditoria_risco_v1_analyze_auditoria_risco_post**](AnalysisApi.md#create_auditoria_risco_v1_analyze_auditoria_risco_post) | **POST** /v1/analyze/auditoriaRisco | Compliance Risk Audit â€” conversation compliance analysis |
| [**create_diagnostic_v1_analyze_diagnostic_post**](AnalysisApi.md#create_diagnostic_v1_analyze_diagnostic_post) | **POST** /v1/analyze/diagnostic | Analyze a call transcript â€” 5 parallel analyses |


## create_auditoria_risco_v1_analyze_auditoria_risco_post

> <AuditoriaRiscoV2Response> create_auditoria_risco_v1_analyze_auditoria_risco_post(auditoria_risco_request)

Compliance Risk Audit â€” conversation compliance analysis

Analyzes a call transcript for compliance risks. Returns a score (0-100), classification level, violations, positives, and a detailed HTML report.  **Python:** ```python import httpx  response = httpx.post(     'https://api01-falaai.action.tec.br/v1/analyze/auditoriaRisco',     headers={'Authorization': 'Bearer fai_xxx'},     json={         'dialog': 'Speaker 1: [00:00:00.540 - 00:00:01.139] Hi, Alex.',         'duration_seconds': 151.0,         'language': 'pt-BR',         'response_language': 'en-US'     } ) print(response.json()) ```  **cURL:** ```bash curl https://api01-falaai.action.tec.br/v1/analyze/auditoriaRisco \\   -H 'Authorization: Bearer fai_xxx' \\   -H 'Content-Type: application/json' \\   -d '{     \"dialog\": \"Speaker 1: [00:00:00.540 - 00:00:01.139] Hi, Alex.\",     \"duration_seconds\": 151.0,     \"language\": \"pt-BR\",     \"response_language\": \"en-US\"   }' ```

### Examples

```ruby
require 'time'
require 'falaai-api'
# setup authorization
FalaAI.configure do |config|
  # Configure Bearer authorization (fai_xxx): ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FalaAI::AnalysisApi.new
auditoria_risco_request = FalaAI::AuditoriaRiscoRequest.new({duration_seconds: 3.56, language: 'pt-BR', response_language: 'en-US'}) # AuditoriaRiscoRequest | 

begin
  # Compliance Risk Audit â€” conversation compliance analysis
  result = api_instance.create_auditoria_risco_v1_analyze_auditoria_risco_post(auditoria_risco_request)
  p result
rescue FalaAI::ApiError => e
  puts "Error when calling AnalysisApi->create_auditoria_risco_v1_analyze_auditoria_risco_post: #{e}"
end
```

#### Using the create_auditoria_risco_v1_analyze_auditoria_risco_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuditoriaRiscoV2Response>, Integer, Hash)> create_auditoria_risco_v1_analyze_auditoria_risco_post_with_http_info(auditoria_risco_request)

```ruby
begin
  # Compliance Risk Audit â€” conversation compliance analysis
  data, status_code, headers = api_instance.create_auditoria_risco_v1_analyze_auditoria_risco_post_with_http_info(auditoria_risco_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuditoriaRiscoV2Response>
rescue FalaAI::ApiError => e
  puts "Error when calling AnalysisApi->create_auditoria_risco_v1_analyze_auditoria_risco_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auditoria_risco_request** | [**AuditoriaRiscoRequest**](AuditoriaRiscoRequest.md) |  |  |

### Return type

[**AuditoriaRiscoV2Response**](AuditoriaRiscoV2Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_diagnostic_v1_analyze_diagnostic_post

> <DiagnosticResponse> create_diagnostic_v1_analyze_diagnostic_post(diagnostic_request)

Analyze a call transcript â€” 5 parallel analyses

Runs 5 independent analyses on a call transcript: dialogue summary, contact reason, identified action, label classification, and sentiment.  **Python:** ```python import httpx  response = httpx.post(     'https://api01-falaai.action.tec.br/v1/analyze/diagnostic',     headers={'Authorization': 'Bearer fai_xxx'},     json={         'dialog': 'Speaker 1: [00:00:00.540 - 00:00:01.139] Hi, Alex.',         'language': 'pt-BR',         'duration_seconds': 151.0     } ) print(response.json()) ```  **cURL:** ```bash curl https://api01-falaai.action.tec.br/v1/analyze/diagnostic \\   -H 'Authorization: Bearer fai_xxx' \\   -H 'Content-Type: application/json' \\   -d '{     \"dialog\": \"Speaker 1: [00:00:00.540 - 00:00:01.139] Hi, Alex.\",     \"language\": \"pt-BR\",     \"duration_seconds\": 151.0   }' ```

### Examples

```ruby
require 'time'
require 'falaai-api'
# setup authorization
FalaAI.configure do |config|
  # Configure Bearer authorization (fai_xxx): ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FalaAI::AnalysisApi.new
diagnostic_request = FalaAI::DiagnosticRequest.new({language: 'pt-BR', duration_seconds: 3.56}) # DiagnosticRequest | 

begin
  # Analyze a call transcript â€” 5 parallel analyses
  result = api_instance.create_diagnostic_v1_analyze_diagnostic_post(diagnostic_request)
  p result
rescue FalaAI::ApiError => e
  puts "Error when calling AnalysisApi->create_diagnostic_v1_analyze_diagnostic_post: #{e}"
end
```

#### Using the create_diagnostic_v1_analyze_diagnostic_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DiagnosticResponse>, Integer, Hash)> create_diagnostic_v1_analyze_diagnostic_post_with_http_info(diagnostic_request)

```ruby
begin
  # Analyze a call transcript â€” 5 parallel analyses
  data, status_code, headers = api_instance.create_diagnostic_v1_analyze_diagnostic_post_with_http_info(diagnostic_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DiagnosticResponse>
rescue FalaAI::ApiError => e
  puts "Error when calling AnalysisApi->create_diagnostic_v1_analyze_diagnostic_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **diagnostic_request** | [**DiagnosticRequest**](DiagnosticRequest.md) |  |  |

### Return type

[**DiagnosticResponse**](DiagnosticResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

