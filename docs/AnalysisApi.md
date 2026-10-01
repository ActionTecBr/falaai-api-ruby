# FalaAI::AnalysisApi

All URIs are relative to *https://api01-falaai.action.tec.br*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_diagnostic_v1_analyze_diagnostic_post**](AnalysisApi.md#create_diagnostic_v1_analyze_diagnostic_post) | **POST** /v1/analyze/diagnostic | Analyze a call transcript — 5 parallel analyses |
| [**create_risk_audit_v1_analyze_risk_audit_post**](AnalysisApi.md#create_risk_audit_v1_analyze_risk_audit_post) | **POST** /v1/analyze/riskAudit | Compliance Risk Audit — conversation compliance analysis |


## create_diagnostic_v1_analyze_diagnostic_post

> <DiagnosticResponse> create_diagnostic_v1_analyze_diagnostic_post(diagnostic_request)

Analyze a call transcript — 5 parallel analyses

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
diagnostic_request = FalaAI::DiagnosticRequest.new({language: 'language_example', duration_seconds: 3.56}) # DiagnosticRequest | 

begin
  # Analyze a call transcript — 5 parallel analyses
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
  # Analyze a call transcript — 5 parallel analyses
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


## create_risk_audit_v1_analyze_risk_audit_post

> <RiskAuditV2Response> create_risk_audit_v1_analyze_risk_audit_post(risk_audit_request)

Compliance Risk Audit — conversation compliance analysis

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
risk_audit_request = FalaAI::RiskAuditRequest.new({duration_seconds: 3.56, language: 'language_example', response_language: 'response_language_example'}) # RiskAuditRequest | 

begin
  # Compliance Risk Audit — conversation compliance analysis
  result = api_instance.create_risk_audit_v1_analyze_risk_audit_post(risk_audit_request)
  p result
rescue FalaAI::ApiError => e
  puts "Error when calling AnalysisApi->create_risk_audit_v1_analyze_risk_audit_post: #{e}"
end
```

#### Using the create_risk_audit_v1_analyze_risk_audit_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RiskAuditV2Response>, Integer, Hash)> create_risk_audit_v1_analyze_risk_audit_post_with_http_info(risk_audit_request)

```ruby
begin
  # Compliance Risk Audit — conversation compliance analysis
  data, status_code, headers = api_instance.create_risk_audit_v1_analyze_risk_audit_post_with_http_info(risk_audit_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RiskAuditV2Response>
rescue FalaAI::ApiError => e
  puts "Error when calling AnalysisApi->create_risk_audit_v1_analyze_risk_audit_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **risk_audit_request** | [**RiskAuditRequest**](RiskAuditRequest.md) |  |  |

### Return type

[**RiskAuditV2Response**](RiskAuditV2Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

