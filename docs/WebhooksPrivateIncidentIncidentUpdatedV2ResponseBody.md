# IncidentIoSdk::WebhooksPrivateIncidentIncidentUpdatedV2ResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_type** | **String** | What type of event is this webhook for? |  |
| **private_incident_incident_updated_v2** | [**WebhookPrivateResourceV2**](WebhookPrivateResourceV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::WebhooksPrivateIncidentIncidentUpdatedV2ResponseBody.new(
  event_type: private_incident.incident_updated_v2,
  private_incident_incident_updated_v2: null
)
```

