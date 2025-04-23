# IncidentIoSdk::FollowUpPriorityV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the follow-up priority option | [optional] |
| **id** | **String** | Unique identifier for the follow-up priority option |  |
| **name** | **String** | Name of the follow-up priority option |  |
| **rank** | **Integer** | Rank is used to order the follow-up priority options correctly |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::FollowUpPriorityV2.new(
  description: A follow-up that requires immediate attention.,
  id: 01GNW4BAQ7XRMFF6FHKNXDFPRW,
  name: Urgent,
  rank: 10
)
```

