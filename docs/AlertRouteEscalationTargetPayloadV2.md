# IncidentIoSdk::AlertRouteEscalationTargetPayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **escalation_paths** | [**EngineParamBindingPayloadV2**](EngineParamBindingPayloadV2.md) |  | [optional] |
| **users** | [**EngineParamBindingPayloadV2**](EngineParamBindingPayloadV2.md) |  | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertRouteEscalationTargetPayloadV2.new(
  escalation_paths: null,
  users: null
)
```

