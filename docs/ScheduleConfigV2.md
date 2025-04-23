# IncidentIoSdk::ScheduleConfigV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rotations** | [**Array&lt;ScheduleRotationV2&gt;**](ScheduleRotationV2.md) | Rotas in this schedule |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ScheduleConfigV2.new(
  rotations: [{&quot;effective_from&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;handover_start_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;handovers&quot;:[{&quot;interval&quot;:1,&quot;interval_type&quot;:&quot;hourly&quot;}],&quot;id&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYEH&quot;,&quot;layers&quot;:[{&quot;id&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYEH&quot;,&quot;name&quot;:&quot;Layer 1&quot;}],&quot;name&quot;:&quot;Primary On-Call Schedule&quot;,&quot;users&quot;:[{&quot;email&quot;:&quot;lisa@incident.io&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Lisa Karlin Curtis&quot;,&quot;role&quot;:&quot;viewer&quot;,&quot;slack_user_id&quot;:&quot;U02AYNF2XJM&quot;}],&quot;working_interval&quot;:[{&quot;end_time&quot;:&quot;17:00&quot;,&quot;start_time&quot;:&quot;09:00&quot;,&quot;weekday&quot;:&quot;monday&quot;}],&quot;working_intervals&quot;:[{&quot;end_time&quot;:&quot;17:00&quot;,&quot;start_time&quot;:&quot;09:00&quot;,&quot;weekday&quot;:&quot;monday&quot;}]}]
)
```

