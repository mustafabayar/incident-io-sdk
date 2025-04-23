# IncidentIoSdk::WebhooksPrivateIncidentActionUpdatedV1ResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_type** | **String** | What type of event is this webhook for? |  |
| **private_incident_action_updated_v1** | [**WebhookPrivateResourceV2**](WebhookPrivateResourceV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::WebhooksPrivateIncidentActionUpdatedV1ResponseBody.new(
  event_type: private_incident.action_updated_v1,
  private_incident_action_updated_v1: null
)
```

