# IncidentIoSdk::ActionV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assignee** | [**UserV1**](UserV1.md) |  | [optional] |
| **completed_at** | **Time** | When the action was completed | [optional] |
| **created_at** | **Time** | When the action was created |  |
| **description** | **String** | Description of the action | [optional] |
| **external_issue_reference** | [**ExternalIssueReferenceV1**](ExternalIssueReferenceV1.md) |  | [optional] |
| **follow_up** | **Boolean** | Whether an action is marked as follow-up |  |
| **id** | **String** | Unique identifier for the action |  |
| **incident_id** | **String** | Unique identifier of the incident the action belongs to |  |
| **status** | **String** | Status of the action |  |
| **updated_at** | **Time** | When the action was last updated |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ActionV1.new(
  assignee: null,
  completed_at: 2021-08-17T13:28:57.801578Z,
  created_at: 2021-08-17T13:28:57.801578Z,
  description: Call the fire brigade,
  external_issue_reference: null,
  follow_up: true,
  id: 01FCNDV6P870EA6S7TK1DSYDG0,
  incident_id: 01FCNDV6P870EA6S7TK1DSYDG0,
  status: outstanding,
  updated_at: 2021-08-17T13:28:57.801578Z
)
```

