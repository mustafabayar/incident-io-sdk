# IncidentIoSdk::IncidentTimestampValueV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_occurred_at** | **Time** | When this last occurred, if it did | [optional] |
| **name** | **String** | Name of the lifecycle event |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IncidentTimestampValueV1.new(
  last_occurred_at: 2021-08-17T13:28:57.801578Z,
  name: last_activity
)
```

