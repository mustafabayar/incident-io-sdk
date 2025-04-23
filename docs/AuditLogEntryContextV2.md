# IncidentIoSdk::AuditLogEntryContextV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** | The location of the actor that performed this action |  |
| **user_agent** | **String** | The user agent of the actor that performed this action | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AuditLogEntryContextV2.new(
  location: 1.2.3.4,
  user_agent: Chrome/91.0.4472.114
)
```

