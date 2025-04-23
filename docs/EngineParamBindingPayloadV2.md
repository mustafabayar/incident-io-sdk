# IncidentIoSdk::EngineParamBindingPayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **array_value** | [**Array&lt;EngineParamBindingValuePayloadV2&gt;**](EngineParamBindingValuePayloadV2.md) | If set, this is the array value of the step parameter | [optional] |
| **value** | [**EngineParamBindingValuePayloadV2**](EngineParamBindingValuePayloadV2.md) |  | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::EngineParamBindingPayloadV2.new(
  array_value: [{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],
  value: null
)
```

