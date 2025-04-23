# IncidentIoSdk::WebhooksPrivateIncidentIncidentCreatedV2ResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_type** | **String** | What type of event is this webhook for? |  |
| **private_incident_incident_created_v2** | [**WebhookPrivateResourceV2**](WebhookPrivateResourceV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::WebhooksPrivateIncidentIncidentCreatedV2ResponseBody.new(
  event_type: private_incident.incident_created_v2,
  private_incident_incident_created_v2: null
)
```

