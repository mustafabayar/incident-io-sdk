# IncidentIoSdk::WebhooksPrivateIncidentMembershipRevokedV1ResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_type** | **String** | What type of event is this webhook for? |  |
| **private_incident_membership_revoked_v1** | [**WebhookIncidentUserV2**](WebhookIncidentUserV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::WebhooksPrivateIncidentMembershipRevokedV1ResponseBody.new(
  event_type: private_incident.membership_revoked_v1,
  private_incident_membership_revoked_v1: null
)
```

