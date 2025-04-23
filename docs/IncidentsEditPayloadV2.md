# IncidentIoSdk::IncidentsEditPayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident** | [**IncidentEditPayloadV2**](IncidentEditPayloadV2.md) |  |  |
| **notify_incident_channel** | **Boolean** | Should we send Slack channel notifications to inform responders of this update? Note that this won&#39;t work if the Slack channel has already been archived. |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IncidentsEditPayloadV2.new(
  incident: null,
  notify_incident_channel: true
)
```

