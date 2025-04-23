# IncidentIoSdk::IncidentTimestampValuePayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_timestamp_id** | **String** | The id of the incident timestamp that this incident timestamp value is associated with. |  |
| **value** | **Time** | The current value of this timestamp, for this incident | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IncidentTimestampValuePayloadV2.new(
  incident_timestamp_id: 01FCNDV6P870EA6S7TK1DSYD5H,
  value: 2021-08-17T13:28:57.801578Z
)
```

