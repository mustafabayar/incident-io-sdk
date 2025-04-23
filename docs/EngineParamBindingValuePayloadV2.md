# IncidentIoSdk::EngineParamBindingValuePayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **literal** | **String** | If set, this is the literal value of the step parameter | [optional] |
| **reference** | **String** | If set, this is the reference into the trigger scope that is the value of this parameter | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::EngineParamBindingValuePayloadV2.new(
  literal: SEV123,
  reference: incident.severity
)
```

