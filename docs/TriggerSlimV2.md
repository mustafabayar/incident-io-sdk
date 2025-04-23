# IncidentIoSdk::TriggerSlimV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | Human readable identifier for this trigger |  |
| **name** | **String** | Unique name of the trigger |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::TriggerSlimV2.new(
  label: Incident Updated,
  name: incident.updated
)
```

