# IncidentIoSdk::WebhooksPublicIncidentActionCreatedV1ResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_type** | **String** | What type of event is this webhook for? |  |
| **public_incident_action_created_v1** | [**ActionV1**](ActionV1.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::WebhooksPublicIncidentActionCreatedV1ResponseBody.new(
  event_type: public_incident.action_created_v1,
  public_incident_action_created_v1: null
)
```

