# IncidentIoSdk::SchedulesCreateOverridePayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **end_at** | **Time** | End time of the override |  |
| **layer_id** | **String** | The layer this override applies to |  |
| **rotation_id** | **String** | The rotation this override applies to |  |
| **schedule_id** | **String** | The schedule this override applies to |  |
| **start_at** | **Time** | Start time of the override |  |
| **user** | [**UserReferencePayloadV2**](UserReferencePayloadV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::SchedulesCreateOverridePayloadV2.new(
  end_at: 2021-08-17T14:00Z,
  layer_id: 01G0J1EXE7AXZ2C93K61WBPYNH,
  rotation_id: 01G0J1EXE7AXZ2C93K61WBPYEH,
  schedule_id: 01G0J1EXE7AXZ2C93K61WBPYEH,
  start_at: 2021-08-17T13:00Z,
  user: null
)
```

