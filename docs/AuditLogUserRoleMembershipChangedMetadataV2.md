# IncidentIoSdk::AuditLogUserRoleMembershipChangedMetadataV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after_base_role_slug** | **String** | The base role slug of the user after their role memberships changed |  |
| **after_custom_role_slugs** | **String** | The custom role slugs of the user after their role memberships changed, separated by commas |  |
| **before_base_role_slug** | **String** | The base role slug of the user before their role memberships changed |  |
| **before_custom_role_slugs** | **String** | The custom role slugs of the user before their role memberships changed, separated by commas |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AuditLogUserRoleMembershipChangedMetadataV2.new(
  after_base_role_slug: owner,
  after_custom_role_slugs: engineering,data,
  before_base_role_slug: admin,
  before_custom_role_slugs: engineering,security
)
```

