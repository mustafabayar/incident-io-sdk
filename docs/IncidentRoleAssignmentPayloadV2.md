# IncidentIoSdk::IncidentRoleAssignmentPayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assignee** | [**UserReferencePayloadV2**](UserReferencePayloadV2.md) |  | [optional] |
| **incident_role_id** | **String** | Unique ID of an incident role. Note that the &#39;reporter&#39; role can only be assigned when creating an incident. |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IncidentRoleAssignmentPayloadV2.new(
  assignee: null,
  incident_role_id: 01FH5TZRWMNAFB0DZ23FD1TV96
)
```

