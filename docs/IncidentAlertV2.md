# IncidentIoSdk::IncidentAlertV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alert** | [**AlertSlimV2**](AlertSlimV2.md) |  |  |
| **alert_route_id** | **String** | The ID of the alert route that created this incident alert | [optional] |
| **id** | **String** | The ID of this alert |  |
| **incident** | [**IncidentSlimV2**](IncidentSlimV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IncidentAlertV2.new(
  alert: null,
  alert_route_id: 01GW2G3V0S59R238FAHPDS1R67,
  id: 01GW2G3V0S59R238FAHPDS1R66,
  incident: null
)
```

