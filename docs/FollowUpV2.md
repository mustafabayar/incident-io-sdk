# IncidentIoSdk::FollowUpV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assignee** | [**UserV2**](UserV2.md) |  | [optional] |
| **completed_at** | **Time** | When the follow-up was completed | [optional] |
| **created_at** | **Time** | When the follow-up was created |  |
| **description** | **String** | Description of the follow-up | [optional] |
| **external_issue_reference** | [**ExternalIssueReferenceV2**](ExternalIssueReferenceV2.md) |  | [optional] |
| **id** | **String** | Unique identifier for the follow-up |  |
| **incident_id** | **String** | Unique identifier of the incident the follow-up belongs to |  |
| **priority** | [**FollowUpPriorityV2**](FollowUpPriorityV2.md) |  | [optional] |
| **status** | **String** | Status of the follow-up |  |
| **title** | **String** | Title of the follow-up |  |
| **updated_at** | **Time** | When the follow-up was last updated |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::FollowUpV2.new(
  assignee: null,
  completed_at: 2021-08-17T13:28:57.801578Z,
  created_at: 2021-08-17T13:28:57.801578Z,
  description: Call the fire brigade,
  external_issue_reference: null,
  id: 01FCNDV6P870EA6S7TK1DSYDG0,
  incident_id: 01FCNDV6P870EA6S7TK1DSYDG0,
  priority: null,
  status: outstanding,
  title: Cat is stuck in the tree,
  updated_at: 2021-08-17T13:28:57.801578Z
)
```

