# IncidentIoSdk::AuditLogsAlertSchemaUpdatedV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | The type of log entry that this is |  |
| **actor** | [**AuditLogActorV2**](AuditLogActorV2.md) |  |  |
| **context** | [**AuditLogEntryContextV2**](AuditLogEntryContextV2.md) |  |  |
| **occurred_at** | **Time** | When the entry occurred |  |
| **targets** | [**Array&lt;AuditLogTargetV2&gt;**](AuditLogTargetV2.md) | The custom field that was created |  |
| **version** | **Integer** | Which version the event is |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AuditLogsAlertSchemaUpdatedV1.new(
  action: alert_schema.updated,
  actor: null,
  context: null,
  occurred_at: 2021-08-17T13:28:57.801578Z,
  targets: [{&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Alert schema&quot;,&quot;type&quot;:&quot;alert_schema&quot;}],
  version: 1
)
```

