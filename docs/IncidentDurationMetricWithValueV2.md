# IncidentIoSdk::IncidentDurationMetricWithValueV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **duration_metric** | [**IncidentDurationMetricV2**](IncidentDurationMetricV2.md) |  |  |
| **value_seconds** | **Integer** | The calculated durations for this metric | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IncidentDurationMetricWithValueV2.new(
  duration_metric: null,
  value_seconds: 10800
)
```

