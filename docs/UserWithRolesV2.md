# IncidentIoSdk::UserWithRolesV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base_role** | [**RBACRoleV2**](RBACRoleV2.md) |  |  |
| **custom_roles** | [**Array&lt;RBACRoleV2&gt;**](RBACRoleV2.md) |  |  |
| **email** | **String** | Email address of the user. | [optional] |
| **id** | **String** | Unique identifier of the user |  |
| **name** | **String** | Name of the user |  |
| **role** | **String** | DEPRECATED: Role of the user as of March 9th 2023, this value is no longer updated. |  |
| **slack_user_id** | **String** | Slack ID of the user | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::UserWithRolesV2.new(
  base_role: null,
  custom_roles: [{&quot;description&quot;:&quot;Elevated permissions for the customer success team.&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Customer Success&quot;,&quot;slug&quot;:&quot;customer-success&quot;}],
  email: lisa@incident.io,
  id: 01FCNDV6P870EA6S7TK1DSYDG0,
  name: Lisa Karlin Curtis,
  role: viewer,
  slack_user_id: U02AYNF2XJM
)
```

