# IncidentIoSdk::AuditLogPrivateIncidentAccessAttemptedMetadataV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **outcome** | **String** | Whether or not the user was able to access the private incident | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AuditLogPrivateIncidentAccessAttemptedMetadataV2.new(
  outcome: granted
)
```

