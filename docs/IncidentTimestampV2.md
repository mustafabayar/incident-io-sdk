# IncidentIoSdk::IncidentTimestampV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of this incident timestamp |  |
| **name** | **String** | Unique name of this timestamp |  |
| **rank** | **Integer** | Order in which this timestamp should be shown |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IncidentTimestampV2.new(
  id: 01FCNDV6P870EA6S7TK1DSYD5H,
  name: Impact started,
  rank: 1
)
```

