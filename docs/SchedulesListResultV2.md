# IncidentIoSdk::SchedulesListResultV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pagination_meta** | [**PaginationMetaResultWithTotalV2**](PaginationMetaResultWithTotalV2.md) |  | [optional] |
| **schedules** | [**Array&lt;ScheduleV2&gt;**](ScheduleV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::SchedulesListResultV2.new(
  pagination_meta: null,
  schedules: [{&quot;annotations&quot;:{&quot;incident.io/terraform/version&quot;:&quot;3.0.0&quot;},&quot;config&quot;:{&quot;rotations&quot;:[{&quot;effective_from&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;handover_start_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;handovers&quot;:[{&quot;interval&quot;:1,&quot;interval_type&quot;:&quot;daily&quot;}],&quot;id&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYEH&quot;,&quot;layers&quot;:[{&quot;id&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYEH&quot;,&quot;name&quot;:&quot;Layer 1&quot;}],&quot;name&quot;:&quot;Primary On-Call Schedule&quot;,&quot;users&quot;:[{&quot;email&quot;:&quot;lisa@incident.io&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Lisa Karlin Curtis&quot;,&quot;role&quot;:&quot;viewer&quot;,&quot;slack_user_id&quot;:&quot;U02AYNF2XJM&quot;}],&quot;working_interval&quot;:[{&quot;end_time&quot;:&quot;17:00&quot;,&quot;start_time&quot;:&quot;09:00&quot;,&quot;weekday&quot;:&quot;tuesday&quot;}],&quot;working_intervals&quot;:[{&quot;end_time&quot;:&quot;17:00&quot;,&quot;start_time&quot;:&quot;09:00&quot;,&quot;weekday&quot;:&quot;tuesday&quot;}]}]},&quot;created_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;current_shifts&quot;:[{&quot;end_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;entry_id&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYEH&quot;,&quot;fingerprint&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYEH&quot;,&quot;layer_id&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYNH&quot;,&quot;rotation_id&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYEH&quot;,&quot;start_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;user&quot;:{&quot;email&quot;:&quot;lisa@incident.io&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Lisa Karlin Curtis&quot;,&quot;role&quot;:&quot;viewer&quot;,&quot;slack_user_id&quot;:&quot;U02AYNF2XJM&quot;}}],&quot;holidays_public_config&quot;:{&quot;country_codes&quot;:[&quot;GB&quot;,&quot;FR&quot;]},&quot;id&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYEH&quot;,&quot;name&quot;:&quot;Primary On-Call Schedule&quot;,&quot;team_ids&quot;:[&quot;01JPQA75EPNEES4479P16P4XAB&quot;],&quot;timezone&quot;:&quot;Europe/London&quot;,&quot;updated_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;}]
)
```

