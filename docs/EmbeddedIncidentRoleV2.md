# IncidentIoSdk::EmbeddedIncidentRoleV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** | When the role was created |  |
| **description** | **String** | Describes the purpose of the role |  |
| **id** | **String** | Unique identifier for the role |  |
| **instructions** | **String** | Provided to whoever is nominated for the role. Note that this will be empty for the &#39;reporter&#39; role. |  |
| **name** | **String** | Human readable name of the incident role |  |
| **required** | **Boolean** | This field is deprecated. | [optional] |
| **role_type** | **String** | Type of incident role |  |
| **shortform** | **String** | Short human readable name for Slack. Note that this will be empty for the &#39;reporter&#39; role. |  |
| **updated_at** | **Time** | When the role was last updated |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::EmbeddedIncidentRoleV2.new(
  created_at: 2021-08-17T13:28:57.801578Z,
  description: The person currently coordinating the incident,
  id: 01FCNDV6P870EA6S7TK1DSYDG0,
  instructions: Take point on the incident; Make sure people are clear on responsibilities,
  name: Incident Lead,
  required: false,
  role_type: lead,
  shortform: lead,
  updated_at: 2021-08-17T13:28:57.801578Z
)
```

