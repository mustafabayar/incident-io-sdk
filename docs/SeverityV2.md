# IncidentIoSdk::SeverityV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** | When the action was created |  |
| **description** | **String** | Description of the severity |  |
| **id** | **String** | Unique identifier of the severity |  |
| **name** | **String** | Human readable name of the severity |  |
| **rank** | **Integer** | Rank to help sort severities (lower numbers are less severe) |  |
| **updated_at** | **Time** | When the action was last updated |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::SeverityV2.new(
  created_at: 2021-08-17T13:28:57.801578Z,
  description: Issues with **low impact**.,
  id: 01FCNDV6P870EA6S7TK1DSYDG0,
  name: Minor,
  rank: 1,
  updated_at: 2021-08-17T13:28:57.801578Z
)
```

