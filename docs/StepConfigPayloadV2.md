# IncidentIoSdk::StepConfigPayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **for_each** | **String** | Reference to an expression that returns resources to run this step over | [optional] |
| **id** | **String** | Unique ID of this step in a workflow |  |
| **name** | **String** | Unique name of the step in the engine |  |
| **param_bindings** | [**Array&lt;EngineParamBindingPayloadV2&gt;**](EngineParamBindingPayloadV2.md) | List of parameter bindings |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::StepConfigPayloadV2.new(
  for_each: abc123,
  id: abc123,
  name: pagerduty.escalate,
  param_bindings: [{&quot;array_value&quot;:[{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}]
)
```

