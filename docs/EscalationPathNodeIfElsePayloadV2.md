# IncidentIoSdk::EscalationPathNodeIfElsePayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conditions** | [**Array&lt;ConditionPayloadV2&gt;**](ConditionPayloadV2.md) | The condition that defines which branch to take | [optional] |
| **else_path** | [**Array&lt;EscalationPathNodePayloadV2&gt;**](EscalationPathNodePayloadV2.md) | The nodes that form the levels if our condition is not met |  |
| **then_path** | [**Array&lt;EscalationPathNodePayloadV2&gt;**](EscalationPathNodePayloadV2.md) | The nodes that form the levels if our condition is met |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::EscalationPathNodeIfElsePayloadV2.new(
  conditions: [{&quot;operation&quot;:&quot;one_of&quot;,&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],&quot;subject&quot;:&quot;incident.severity&quot;}],
  else_path: [{&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;if_else&quot;:{&quot;conditions&quot;:[{&quot;operation&quot;:&quot;one_of&quot;,&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],&quot;subject&quot;:&quot;incident.severity&quot;}],&quot;else_path&quot;:[{}],&quot;then_path&quot;:[{}]},&quot;level&quot;:{&quot;round_robin_config&quot;:{&quot;enabled&quot;:false,&quot;rotate_after_seconds&quot;:120},&quot;targets&quot;:[{&quot;id&quot;:&quot;lawrencejones&quot;,&quot;schedule_mode&quot;:&quot;currently_on_call&quot;,&quot;type&quot;:&quot;schedule&quot;,&quot;urgency&quot;:&quot;high&quot;}],&quot;time_to_ack_interval_condition&quot;:&quot;active&quot;,&quot;time_to_ack_seconds&quot;:1800,&quot;time_to_ack_weekday_interval_config_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;},&quot;notify_channel&quot;:{&quot;targets&quot;:[{&quot;id&quot;:&quot;lawrencejones&quot;,&quot;schedule_mode&quot;:&quot;currently_on_call&quot;,&quot;type&quot;:&quot;schedule&quot;,&quot;urgency&quot;:&quot;high&quot;}],&quot;time_to_ack_interval_condition&quot;:&quot;active&quot;,&quot;time_to_ack_seconds&quot;:1800,&quot;time_to_ack_weekday_interval_config_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;},&quot;repeat&quot;:{&quot;repeat_times&quot;:3,&quot;to_node&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;},&quot;type&quot;:&quot;if_else&quot;}],
  then_path: [{&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;if_else&quot;:{&quot;conditions&quot;:[{&quot;operation&quot;:&quot;one_of&quot;,&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],&quot;subject&quot;:&quot;incident.severity&quot;}],&quot;else_path&quot;:[{}],&quot;then_path&quot;:[{}]},&quot;level&quot;:{&quot;round_robin_config&quot;:{&quot;enabled&quot;:false,&quot;rotate_after_seconds&quot;:120},&quot;targets&quot;:[{&quot;id&quot;:&quot;lawrencejones&quot;,&quot;schedule_mode&quot;:&quot;currently_on_call&quot;,&quot;type&quot;:&quot;schedule&quot;,&quot;urgency&quot;:&quot;high&quot;}],&quot;time_to_ack_interval_condition&quot;:&quot;active&quot;,&quot;time_to_ack_seconds&quot;:1800,&quot;time_to_ack_weekday_interval_config_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;},&quot;notify_channel&quot;:{&quot;targets&quot;:[{&quot;id&quot;:&quot;lawrencejones&quot;,&quot;schedule_mode&quot;:&quot;currently_on_call&quot;,&quot;type&quot;:&quot;schedule&quot;,&quot;urgency&quot;:&quot;high&quot;}],&quot;time_to_ack_interval_condition&quot;:&quot;active&quot;,&quot;time_to_ack_seconds&quot;:1800,&quot;time_to_ack_weekday_interval_config_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;},&quot;repeat&quot;:{&quot;repeat_times&quot;:3,&quot;to_node&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;},&quot;type&quot;:&quot;if_else&quot;}]
)
```

