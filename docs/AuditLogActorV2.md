# IncidentIoSdk::AuditLogActorV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the actor |  |
| **metadata** | [**AuditLogActorMetadataV2**](AuditLogActorMetadataV2.md) |  | [optional] |
| **name** | **String** | The name of the actor | [optional] |
| **type** | **String** | The type of actor |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AuditLogActorV2.new(
  id: 01FCNDV6P870EA6S7TK1DSYDG0,
  metadata: null,
  name: John Doe,
  type: user
)
```

