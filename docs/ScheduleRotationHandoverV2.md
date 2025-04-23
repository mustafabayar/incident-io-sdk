# IncidentIoSdk::ScheduleRotationHandoverV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **interval** | **Integer** |  | [optional] |
| **interval_type** | **String** | How often a handover occurs | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ScheduleRotationHandoverV2.new(
  interval: 1,
  interval_type: hourly
)
```

