# FalaAI::VersionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service** | **String** | Service name |  |
| **version** | **String** | Current API version |  |
| **deploy_date** | **String** | Deploy timestamp |  |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::VersionResponse.new(
  service: FalaAI API,
  version: api_v1.21.45,
  deploy_date: 2026-09-22 20260922_023910
)
```

