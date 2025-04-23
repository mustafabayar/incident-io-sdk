# IncidentIoSdk::WeekdayIntervalV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **end_time** | **String** | End time of the interval, in 24hr format |  |
| **start_time** | **String** | Start time of the interval, in 24hr format |  |
| **weekday** | **String** | Weekdays for use within a schedule or escalation path |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::WeekdayIntervalV2.new(
  end_time: 17:00,
  start_time: 09:00,
  weekday: monday
)
```

