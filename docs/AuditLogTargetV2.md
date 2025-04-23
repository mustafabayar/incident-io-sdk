# IncidentIoSdk::AuditLogTargetV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the target |  |
| **name** | **String** | The name of the target | [optional] |
| **type** | **String** | The type of target |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AuditLogTargetV2.new(
  id: 01FCNDV6P870EA6S7TK1DSYDG0,
  name: John Doe,
  type: user
)
```

