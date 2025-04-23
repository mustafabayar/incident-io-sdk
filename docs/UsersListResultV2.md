# IncidentIoSdk::UsersListResultV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pagination_meta** | [**PaginationMetaResultV2**](PaginationMetaResultV2.md) |  |  |
| **users** | [**Array&lt;UserWithRolesV2&gt;**](UserWithRolesV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::UsersListResultV2.new(
  pagination_meta: null,
  users: [{&quot;base_role&quot;:{&quot;description&quot;:&quot;Elevated permissions for the customer success team.&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Customer Success&quot;,&quot;slug&quot;:&quot;customer-success&quot;},&quot;custom_roles&quot;:[{&quot;description&quot;:&quot;Elevated permissions for the customer success team.&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Customer Success&quot;,&quot;slug&quot;:&quot;customer-success&quot;}],&quot;email&quot;:&quot;lisa@incident.io&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Lisa Karlin Curtis&quot;,&quot;role&quot;:&quot;viewer&quot;,&quot;slack_user_id&quot;:&quot;U02AYNF2XJM&quot;}]
)
```

