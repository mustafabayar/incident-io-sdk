# IncidentIoSdk::ScheduleRotationWorkingIntervalUpdatePayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **end_time** | **String** | End time of the interval, in 24hr format | [optional] |
| **start_time** | **String** | Start time of the interval, in 24hr format | [optional] |
| **weekday** | **String** | Weekdays for use with a schedule | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ScheduleRotationWorkingIntervalUpdatePayloadV2.new(
  end_time: 17:00,
  start_time: 09:00,
  weekday: monday
)
```

