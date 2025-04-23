# IncidentIoSdk::ScheduleUpdatePayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **annotations** | **Hash&lt;String, String&gt;** | Annotations that can track metadata about the schedule | [optional] |
| **config** | [**ScheduleConfigUpdatePayloadV2**](ScheduleConfigUpdatePayloadV2.md) |  | [optional] |
| **holidays_public_config** | [**ScheduleHolidaysPublicConfigPayloadV2**](ScheduleHolidaysPublicConfigPayloadV2.md) |  | [optional] |
| **name** | **String** | Name of the schedule | [optional] |
| **team_ids** | **Array&lt;String&gt;** | IDs of teams that own this schedule | [optional] |
| **timezone** | **String** | Timezone of the schedule | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ScheduleUpdatePayloadV2.new(
  annotations: {&quot;incident.io/terraform/version&quot;:&quot;version-of-terraform&quot;},
  config: null,
  holidays_public_config: null,
  name: Primary On-call Schedule,
  team_ids: [&quot;01JPQA75EPNEES4479P16P4XAB&quot;],
  timezone: America/Los_Angeles
)
```

