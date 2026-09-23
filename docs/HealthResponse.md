# FalaAI::HealthResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Overall API status |  |
| **version** | **String** | Current API version |  |
| **uptime_seconds** | **Integer** | Uptime in seconds |  |
| **database** | **Boolean** | Database connection status |  |
| **phase** | **String** | Development phase |  |
| **launch_date** | **String** | Expected public launch date |  |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::HealthResponse.new(
  status: ok,
  version: api_v1.5.2,
  uptime_seconds: 3600,
  database: true,
  phase: development,
  launch_date: 2026-08-01
)
```

