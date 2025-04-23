# IncidentIoSdk::WebhooksPublicIncidentIncidentStatusUpdatedV2ResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_type** | **String** | What type of event is this webhook for? |  |
| **public_incident_incident_status_updated_v2** | [**IncidentWithStatusChangeV2**](IncidentWithStatusChangeV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::WebhooksPublicIncidentIncidentStatusUpdatedV2ResponseBody.new(
  event_type: public_incident.incident_status_updated_v2,
  public_incident_incident_status_updated_v2: null
)
```

