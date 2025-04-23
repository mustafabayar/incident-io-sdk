# IncidentIoSdk::AuditLogUserSCIMGroupMappingChangedMetadataV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after_base_role_slug** | **String** | The base role slug of this SCIM group after the mapping was changed (if any) | [optional] |
| **after_custom_role_slugs** | **String** | The custom role slugs of this SCIM group after the mapping was changed (if any), separated by commas | [optional] |
| **before_base_role_slug** | **String** | The base role slug assigned to this SCIM group before the mapping was changed (if any) | [optional] |
| **before_custom_role_slugs** | **String** | The custom role slugs of this SCIM group before the mapping was changed (if any), separated by commas | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AuditLogUserSCIMGroupMappingChangedMetadataV2.new(
  after_base_role_slug: owner,
  after_custom_role_slugs: engineering,data,
  before_base_role_slug: admin,
  before_custom_role_slugs: engineering,security
)
```

