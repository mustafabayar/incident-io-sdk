# IncidentIoSdk::ScheduleRotationUpdatePayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **effective_from** | **Time** |  | [optional] |
| **handover_start_at** | **Time** |  | [optional] |
| **handovers** | [**Array&lt;ScheduleRotationHandoverV2&gt;**](ScheduleRotationHandoverV2.md) |  | [optional] |
| **id** | **String** | Unique identifier of the rotation | [optional] |
| **layers** | [**Array&lt;ScheduleLayerUpdatePayloadV2&gt;**](ScheduleLayerUpdatePayloadV2.md) |  | [optional] |
| **name** | **String** | Name of the rotation | [optional] |
| **users** | [**Array&lt;UserReferencePayloadV2&gt;**](UserReferencePayloadV2.md) |  | [optional] |
| **working_interval** | [**Array&lt;ScheduleRotationWorkingIntervalUpdatePayloadV2&gt;**](ScheduleRotationWorkingIntervalUpdatePayloadV2.md) |  | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ScheduleRotationUpdatePayloadV2.new(
  effective_from: 2021-08-17T13:28:57.801578Z,
  handover_start_at: 2021-08-17T13:28:57.801578Z,
  handovers: [{&quot;interval&quot;:1,&quot;interval_type&quot;:&quot;hourly&quot;}],
  id: 01G0J1EXE7AXZ2C93K61WBPYEH,
  layers: [{&quot;id&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYEH&quot;,&quot;name&quot;:&quot;Layer 1&quot;}],
  name: My Rotation,
  users: [{&quot;email&quot;:&quot;bob@example.com&quot;,&quot;id&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYEH&quot;,&quot;slack_user_id&quot;:&quot;USER123&quot;}],
  working_interval: [{&quot;end_time&quot;:&quot;17:00&quot;,&quot;start_time&quot;:&quot;09:00&quot;,&quot;weekday&quot;:&quot;monday&quot;}]
)
```

