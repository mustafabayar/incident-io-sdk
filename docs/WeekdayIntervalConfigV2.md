# IncidentIoSdk::WeekdayIntervalConfigV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for this set of working intervals |  |
| **name** | **String** | A human readable label for this set of working intervals |  |
| **timezone** | **String** | How to interpret all the intervals |  |
| **weekday_intervals** | [**Array&lt;WeekdayIntervalV2&gt;**](WeekdayIntervalV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::WeekdayIntervalConfigV2.new(
  id: abc123,
  name: abc123,
  timezone: abc123,
  weekday_intervals: [{&quot;end_time&quot;:&quot;17:00&quot;,&quot;start_time&quot;:&quot;09:00&quot;,&quot;weekday&quot;:&quot;monday&quot;}]
)
```

