# IncidentIoSdk::EscalationPathNodePayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | An ID for this node, unique within the escalation path.  This allows you to reference the node in other nodes, such as when configuring a &#39;repeat&#39; node. |  |
| **if_else** | [**EscalationPathNodeIfElsePayloadV2**](EscalationPathNodeIfElsePayloadV2.md) |  | [optional] |
| **level** | [**EscalationPathNodeLevelV2**](EscalationPathNodeLevelV2.md) |  | [optional] |
| **notify_channel** | [**EscalationPathNodeNotifyChannelV2**](EscalationPathNodeNotifyChannelV2.md) |  | [optional] |
| **repeat** | [**EscalationPathNodeRepeatV2**](EscalationPathNodeRepeatV2.md) |  | [optional] |
| **type** | **String** | The type of this node. Available types are: * level: A set of targets (users or schedules) that should be paged, either all at once, or with a round-robin configuration. * notify_channel: Send the escalation to a Slack channel, where it can be acked by anyone in the channel. * if_else: Branch the escalation based on a set of conditions. * repeat: Go back to a previous node and repeat the logic from there. |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::EscalationPathNodePayloadV2.new(
  id: 01FCNDV6P870EA6S7TK1DSYDG0,
  if_else: null,
  level: null,
  notify_channel: null,
  repeat: null,
  type: if_else
)
```

