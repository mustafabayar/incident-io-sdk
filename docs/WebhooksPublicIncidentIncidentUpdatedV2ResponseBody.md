# IncidentIoSdk::WebhooksPublicIncidentIncidentUpdatedV2ResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_type** | **String** | What type of event is this webhook for? |  |
| **public_incident_incident_updated_v2** | [**WebhookIncidentV2**](WebhookIncidentV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::WebhooksPublicIncidentIncidentUpdatedV2ResponseBody.new(
  event_type: public_incident.incident_updated_v2,
  public_incident_incident_updated_v2: null
)
```

