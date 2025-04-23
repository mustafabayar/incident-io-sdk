# IncidentIoSdk::EscalationPathNodeLevelV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **round_robin_config** | [**EscalationPathRoundRobinConfigV2**](EscalationPathRoundRobinConfigV2.md) |  | [optional] |
| **targets** | [**Array&lt;EscalationPathTargetV2&gt;**](EscalationPathTargetV2.md) | The targets (users or schedules) for this level |  |
| **time_to_ack_interval_condition** | **String** | If the time to ack is relative to a time window, this defines whether we move when the window is active or inactive | [optional] |
| **time_to_ack_seconds** | **Integer** | How long should we wait for this level to acknowledge before proceeding to the next node in the path? | [optional] |
| **time_to_ack_weekday_interval_config_id** | **String** | If the time to ack is relative to a time window, this identifies which window it is relative to | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::EscalationPathNodeLevelV2.new(
  round_robin_config: null,
  targets: [{&quot;id&quot;:&quot;lawrencejones&quot;,&quot;schedule_mode&quot;:&quot;currently_on_call&quot;,&quot;type&quot;:&quot;schedule&quot;,&quot;urgency&quot;:&quot;high&quot;}],
  time_to_ack_interval_condition: active,
  time_to_ack_seconds: 1800,
  time_to_ack_weekday_interval_config_id: 01FCNDV6P870EA6S7TK1DSYDG0
)
```

