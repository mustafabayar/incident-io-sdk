# IncidentIoSdk::ScheduleRotationV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **effective_from** | **Time** | When this rotation config will be effective from | [optional] |
| **handover_start_at** | **Time** | Defines the next moment we&#39;ll trigger a handover |  |
| **handovers** | [**Array&lt;ScheduleRotationHandoverV2&gt;**](ScheduleRotationHandoverV2.md) | Defines the handover intervals for this rota, in order they should apply |  |
| **id** | **String** | Unique internal ID of the rotation |  |
| **layers** | [**Array&lt;ScheduleLayerV2&gt;**](ScheduleLayerV2.md) | Controls how many people are on-call concurrently |  |
| **name** | **String** | Human readable name synced from external provider |  |
| **users** | [**Array&lt;UserV2&gt;**](UserV2.md) | Users who are available to be scheduled on this rota |  |
| **working_interval** | [**Array&lt;ScheduleRotationWorkingIntervalV2&gt;**](ScheduleRotationWorkingIntervalV2.md) | DEPRECATED: Use working_intervals instead. | [optional] |
| **working_intervals** | [**Array&lt;ScheduleRotationWorkingIntervalV2&gt;**](ScheduleRotationWorkingIntervalV2.md) | Optional restrictions that define when to schedule people for this rota |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ScheduleRotationV2.new(
  effective_from: 2021-08-17T13:28:57.801578Z,
  handover_start_at: 2021-08-17T13:28:57.801578Z,
  handovers: [{&quot;interval&quot;:1,&quot;interval_type&quot;:&quot;hourly&quot;}],
  id: 01G0J1EXE7AXZ2C93K61WBPYEH,
  layers: [{&quot;id&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYEH&quot;,&quot;name&quot;:&quot;Layer 1&quot;}],
  name: Primary On-Call Schedule,
  users: [{&quot;email&quot;:&quot;lisa@incident.io&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Lisa Karlin Curtis&quot;,&quot;role&quot;:&quot;viewer&quot;,&quot;slack_user_id&quot;:&quot;U02AYNF2XJM&quot;}],
  working_interval: [{&quot;end_time&quot;:&quot;17:00&quot;,&quot;start_time&quot;:&quot;09:00&quot;,&quot;weekday&quot;:&quot;monday&quot;}],
  working_intervals: [{&quot;end_time&quot;:&quot;17:00&quot;,&quot;start_time&quot;:&quot;09:00&quot;,&quot;weekday&quot;:&quot;monday&quot;}]
)
```

