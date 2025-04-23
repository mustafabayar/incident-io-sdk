# IncidentIoSdk::WebhooksPublicIncidentIncidentCreatedV2ResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_type** | **String** | What type of event is this webhook for? |  |
| **public_incident_incident_created_v2** | [**WebhookIncidentV2**](WebhookIncidentV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::WebhooksPublicIncidentIncidentCreatedV2ResponseBody.new(
  event_type: public_incident.incident_created_v2,
  public_incident_incident_created_v2: null
)
```

