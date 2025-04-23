# IncidentIoSdk::EscalationsUpdatePathPayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of this escalation path, for the user&#39;s reference. |  |
| **path** | [**Array&lt;EscalationPathNodePayloadV2&gt;**](EscalationPathNodePayloadV2.md) | The nodes that form the levels and branches of this escalation path. |  |
| **team_ids** | **Array&lt;String&gt;** | IDs of the teams that own this escalation path | [optional] |
| **working_hours** | [**Array&lt;WeekdayIntervalConfigV2&gt;**](WeekdayIntervalConfigV2.md) | The working hours for this escalation path. | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::EscalationsUpdatePathPayloadV2.new(
  name: Urgent Support,
  path: [{&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;if_else&quot;:{&quot;conditions&quot;:[{&quot;operation&quot;:&quot;one_of&quot;,&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],&quot;subject&quot;:&quot;incident.severity&quot;}],&quot;else_path&quot;:[{}],&quot;then_path&quot;:[{}]},&quot;level&quot;:{&quot;round_robin_config&quot;:{&quot;enabled&quot;:false,&quot;rotate_after_seconds&quot;:120},&quot;targets&quot;:[{&quot;id&quot;:&quot;lawrencejones&quot;,&quot;schedule_mode&quot;:&quot;currently_on_call&quot;,&quot;type&quot;:&quot;user&quot;,&quot;urgency&quot;:&quot;high&quot;}],&quot;time_to_ack_interval_condition&quot;:&quot;active&quot;,&quot;time_to_ack_seconds&quot;:1800,&quot;time_to_ack_weekday_interval_config_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;},&quot;notify_channel&quot;:{&quot;targets&quot;:[{&quot;id&quot;:&quot;lawrencejones&quot;,&quot;schedule_mode&quot;:&quot;currently_on_call&quot;,&quot;type&quot;:&quot;user&quot;,&quot;urgency&quot;:&quot;high&quot;}],&quot;time_to_ack_interval_condition&quot;:&quot;active&quot;,&quot;time_to_ack_seconds&quot;:1800,&quot;time_to_ack_weekday_interval_config_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;},&quot;repeat&quot;:{&quot;repeat_times&quot;:3,&quot;to_node&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;},&quot;type&quot;:&quot;if_else&quot;}],
  team_ids: [&quot;01JPQA75EPNEES4479P16P4XAB&quot;],
  working_hours: [{&quot;id&quot;:&quot;abc123&quot;,&quot;name&quot;:&quot;abc123&quot;,&quot;timezone&quot;:&quot;abc123&quot;,&quot;weekday_intervals&quot;:[{&quot;end_time&quot;:&quot;17:00&quot;,&quot;start_time&quot;:&quot;09:00&quot;,&quot;weekday&quot;:&quot;tuesday&quot;}]}]
)
```

