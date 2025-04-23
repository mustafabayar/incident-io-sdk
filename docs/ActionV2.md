# IncidentIoSdk::ActionV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assignee** | [**UserV2**](UserV2.md) |  | [optional] |
| **completed_at** | **Time** | When the action was completed | [optional] |
| **created_at** | **Time** | When the action was created |  |
| **description** | **String** | Description of the action |  |
| **id** | **String** | Unique identifier for the action |  |
| **incident_id** | **String** | Unique identifier of the incident the action belongs to |  |
| **status** | **String** | Status of the action |  |
| **updated_at** | **Time** | When the action was last updated |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ActionV2.new(
  assignee: null,
  completed_at: 2021-08-17T13:28:57.801578Z,
  created_at: 2021-08-17T13:28:57.801578Z,
  description: Call the fire brigade,
  id: 01FCNDV6P870EA6S7TK1DSYDG0,
  incident_id: 01FCNDV6P870EA6S7TK1DSYDG0,
  status: outstanding,
  updated_at: 2021-08-17T13:28:57.801578Z
)
```

