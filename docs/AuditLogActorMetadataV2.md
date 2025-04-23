# IncidentIoSdk::AuditLogActorMetadataV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_key_roles** | **String** | The roles that the API key has, separated by commas (if it&#39;s an API key actor) | [optional] |
| **external_resource_external_id** | **String** | The ID of the external resource in the 3rd party system (if it&#39;s an external resource actor) | [optional] |
| **external_resource_type** | **String** | The type of the external resource (if it&#39;s an external resource actor) | [optional] |
| **user_base_role_slug** | **String** | The base role slug of the user (if it&#39;s a user actor) | [optional] |
| **user_custom_role_slugs** | **String** | The custom role slugs of the user, separated by commas (if it&#39;s a user actor) | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AuditLogActorMetadataV2.new(
  api_key_roles: abc123,
  external_resource_external_id: q1234,
  external_resource_type: pager_duty_incident,
  user_base_role_slug: admin,
  user_custom_role_slugs: engineering,security
)
```

