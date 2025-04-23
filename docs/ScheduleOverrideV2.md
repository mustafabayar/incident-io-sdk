# IncidentIoSdk::ScheduleOverrideV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** |  |  |
| **end_at** | **Time** | End of the override |  |
| **id** | **String** | Unique internal ID of the schedule override |  |
| **layer_id** | **String** | The layer on the rotation on the schedule that this override applies to |  |
| **rotation_id** | **String** | The rotation on the schedule that this override applies to |  |
| **schedule_id** | **String** | The schedule that this override applies to |  |
| **start_at** | **Time** | Start of the override |  |
| **updated_at** | **Time** |  |  |
| **user** | [**UserV2**](UserV2.md) |  | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ScheduleOverrideV2.new(
  created_at: 2021-08-17T13:28:57.801578Z,
  end_at: 2021-08-17T13:28:57.801578Z,
  id: 01G0J1EXE7AXZ2C93K61WBPYEH,
  layer_id: 01G0J1EXE7AXZ2C93K61WBPYEH,
  rotation_id: 01G0J1EXE7AXZ2C93K61WBPYEH,
  schedule_id: 01G0J1EXE7AXZ2C93K61WBPYEH,
  start_at: 2021-08-17T13:28:57.801578Z,
  updated_at: 2021-08-17T13:28:57.801578Z,
  user: null
)
```

