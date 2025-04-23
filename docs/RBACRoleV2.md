# IncidentIoSdk::RBACRoleV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the purpose for the RBAC role | [optional] |
| **id** | **String** | Unique identifier of the RBAC role |  |
| **name** | **String** | Name of the RBAC role |  |
| **slug** | **String** | Unique human-readable slug for the RBAC role |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::RBACRoleV2.new(
  description: Elevated permissions for the customer success team.,
  id: 01FCNDV6P870EA6S7TK1DSYDG0,
  name: Customer Success,
  slug: customer-success
)
```

