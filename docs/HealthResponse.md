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
  status: null,
  version: null,
  uptime_seconds: null,
  database: null,
  phase: null,
  launch_date: null
)
```

