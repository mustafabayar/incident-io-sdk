# IncidentIoSdk::IncidentMembershipV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** | When the membership was created |  |
| **id** | **String** | Unique identifier of this incident membership |  |
| **incident_id** | **String** | Unique identifier of the incident |  |
| **updated_at** | **Time** | When the membership was last updated |  |
| **user** | [**UserV1**](UserV1.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IncidentMembershipV1.new(
  created_at: 2021-08-17T13:28:57.801578Z,
  id: 01FCNDV6P870EA6S7TK1DSYD5H,
  incident_id: 01FCNDV6P870EA6S7TK1DSYD5H,
  updated_at: 2021-08-17T13:28:57.801578Z,
  user: null
)
```

