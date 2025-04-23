# IncidentIoSdk::ScheduleEntryV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **end_at** | **Time** |  |  |
| **entry_id** | **String** | Unique identifier of the schedule entry | [optional] |
| **fingerprint** | **String** | A unique identifier for this entry, used to determine a unique shift | [optional] |
| **layer_id** | **String** | If present, the layer this entry applies to on the rota | [optional] |
| **rotation_id** | **String** | If present, the rotation this entry applies to on the schedule | [optional] |
| **start_at** | **Time** |  |  |
| **user** | [**UserV2**](UserV2.md) |  | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ScheduleEntryV2.new(
  end_at: 2021-08-17T13:28:57.801578Z,
  entry_id: 01G0J1EXE7AXZ2C93K61WBPYEH,
  fingerprint: 01G0J1EXE7AXZ2C93K61WBPYEH,
  layer_id: 01G0J1EXE7AXZ2C93K61WBPYNH,
  rotation_id: 01G0J1EXE7AXZ2C93K61WBPYEH,
  start_at: 2021-08-17T13:28:57.801578Z,
  user: null
)
```

