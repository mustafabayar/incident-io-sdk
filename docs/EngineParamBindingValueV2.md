# IncidentIoSdk::EngineParamBindingValueV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | Human readable label to be displayed for user to select |  |
| **literal** | **String** | If set, this is the literal value of the step parameter | [optional] |
| **reference** | **String** | If set, this is the reference into the trigger scope that is the value of this parameter | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::EngineParamBindingValueV2.new(
  label: Lawrence Jones,
  literal: SEV123,
  reference: incident.severity
)
```

