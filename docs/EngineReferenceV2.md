# IncidentIoSdk::EngineReferenceV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **array** | **Boolean** | If true, the reference can refer to 0 to many items |  |
| **key** | **String** | Unique identifier of field will set |  |
| **label** | **String** | Human readable label for the field (with context) |  |
| **type** | **String** | The type of this resource in the engine |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::EngineReferenceV2.new(
  array: false,
  key: incident.custom_field[&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;],
  label: Incident -&gt; Affected Team,
  type: IncidentSeverity
)
```

