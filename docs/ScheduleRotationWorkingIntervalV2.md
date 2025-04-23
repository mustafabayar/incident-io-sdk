# IncidentIoSdk::ScheduleRotationWorkingIntervalV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **end_time** | **String** | End time of the interval, in 24hr format |  |
| **start_time** | **String** | Start time of the interval, in 24hr format |  |
| **weekday** | **String** | Weekdays for use with a schedule |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ScheduleRotationWorkingIntervalV2.new(
  end_time: 17:00,
  start_time: 09:00,
  weekday: monday
)
```

