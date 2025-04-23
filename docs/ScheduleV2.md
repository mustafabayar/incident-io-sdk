# IncidentIoSdk::ScheduleV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **annotations** | **Hash&lt;String, String&gt;** | Annotations that track metadata about this resource |  |
| **config** | [**ScheduleConfigV2**](ScheduleConfigV2.md) |  | [optional] |
| **created_at** | **Time** |  |  |
| **current_shifts** | [**Array&lt;ScheduleEntryV2&gt;**](ScheduleEntryV2.md) | Shifts that are on-going for this schedule, if a native schedule | [optional] |
| **holidays_public_config** | [**ScheduleHolidaysPublicConfigV2**](ScheduleHolidaysPublicConfigV2.md) |  | [optional] |
| **id** | **String** | Unique internal ID of the schedule |  |
| **name** | **String** | Human readable name synced from external provider |  |
| **team_ids** | **Array&lt;String&gt;** | IDs of teams that own this schedule |  |
| **timezone** | **String** | Timezone of the schedule, as interpreted at the point of generating the report |  |
| **updated_at** | **Time** |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ScheduleV2.new(
  annotations: {&quot;incident.io/terraform/version&quot;:&quot;3.0.0&quot;},
  config: null,
  created_at: 2021-08-17T13:28:57.801578Z,
  current_shifts: [{&quot;end_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;entry_id&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYEH&quot;,&quot;fingerprint&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYEH&quot;,&quot;layer_id&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYNH&quot;,&quot;rotation_id&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYEH&quot;,&quot;start_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;user&quot;:{&quot;email&quot;:&quot;lisa@incident.io&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Lisa Karlin Curtis&quot;,&quot;role&quot;:&quot;viewer&quot;,&quot;slack_user_id&quot;:&quot;U02AYNF2XJM&quot;}}],
  holidays_public_config: null,
  id: 01G0J1EXE7AXZ2C93K61WBPYEH,
  name: Primary On-Call Schedule,
  team_ids: [&quot;01JPQA75EPNEES4479P16P4XAB&quot;],
  timezone: Europe/London,
  updated_at: 2021-08-17T13:28:57.801578Z
)
```

