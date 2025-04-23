# IncidentIoSdk::ScheduleEntriesListPayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **final** | [**Array&lt;ScheduleEntryV2&gt;**](ScheduleEntryV2.md) |  |  |
| **overrides** | [**Array&lt;ScheduleEntryV2&gt;**](ScheduleEntryV2.md) |  |  |
| **scheduled** | [**Array&lt;ScheduleEntryV2&gt;**](ScheduleEntryV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ScheduleEntriesListPayloadV2.new(
  final: [{&quot;end_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;entry_id&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYEH&quot;,&quot;fingerprint&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYEH&quot;,&quot;layer_id&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYNH&quot;,&quot;rotation_id&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYEH&quot;,&quot;start_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;user&quot;:{&quot;email&quot;:&quot;lisa@incident.io&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Lisa Karlin Curtis&quot;,&quot;role&quot;:&quot;viewer&quot;,&quot;slack_user_id&quot;:&quot;U02AYNF2XJM&quot;}}],
  overrides: [{&quot;end_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;entry_id&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYEH&quot;,&quot;fingerprint&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYEH&quot;,&quot;layer_id&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYNH&quot;,&quot;rotation_id&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYEH&quot;,&quot;start_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;user&quot;:{&quot;email&quot;:&quot;lisa@incident.io&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Lisa Karlin Curtis&quot;,&quot;role&quot;:&quot;viewer&quot;,&quot;slack_user_id&quot;:&quot;U02AYNF2XJM&quot;}}],
  scheduled: [{&quot;end_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;entry_id&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYEH&quot;,&quot;fingerprint&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYEH&quot;,&quot;layer_id&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYNH&quot;,&quot;rotation_id&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYEH&quot;,&quot;start_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;user&quot;:{&quot;email&quot;:&quot;lisa@incident.io&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Lisa Karlin Curtis&quot;,&quot;role&quot;:&quot;viewer&quot;,&quot;slack_user_id&quot;:&quot;U02AYNF2XJM&quot;}}]
)
```

