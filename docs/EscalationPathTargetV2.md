# IncidentIoSdk::EscalationPathTargetV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Uniquely identifies an entity of this type |  |
| **schedule_mode** | **String** | Only set for schedule targets, and either currently_on_call, all_users or all_users_for_rota and specifies which users to fetch from the schedule | [optional] |
| **type** | **String** | Controls what type of entity this target identifies, such as EscalationPolicy or User |  |
| **urgency** | **String** | The urgency of this escalation path target |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::EscalationPathTargetV2.new(
  id: lawrencejones,
  schedule_mode: currently_on_call,
  type: schedule,
  urgency: high
)
```

