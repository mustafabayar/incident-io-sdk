# IncidentIoSdk::WebhooksPrivateIncidentMembershipGrantedV1ResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_type** | **String** | What type of event is this webhook for? |  |
| **private_incident_membership_granted_v1** | [**WebhookIncidentUserV2**](WebhookIncidentUserV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::WebhooksPrivateIncidentMembershipGrantedV1ResponseBody.new(
  event_type: private_incident.membership_granted_v1,
  private_incident_membership_granted_v1: null
)
```

