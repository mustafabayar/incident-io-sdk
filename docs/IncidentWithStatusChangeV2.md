# IncidentIoSdk::IncidentWithStatusChangeV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident** | [**IncidentV2**](IncidentV2.md) |  |  |
| **message** | **String** | Message that explains the context behind the update | [optional] |
| **new_status** | [**IncidentStatusV2**](IncidentStatusV2.md) |  |  |
| **previous_status** | [**IncidentStatusV2**](IncidentStatusV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IncidentWithStatusChangeV2.new(
  incident: null,
  message: We&#39;re working on a fix, hoping to ship in the next 30 minutes,
  new_status: null,
  previous_status: null
)
```

