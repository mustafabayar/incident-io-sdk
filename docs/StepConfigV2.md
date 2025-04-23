# IncidentIoSdk::StepConfigV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **for_each** | **String** | Reference to an expression that returns resources to run this step over | [optional] |
| **id** | **String** | Unique ID of this step in a workflow |  |
| **label** | **String** | Human readable identifier for this step |  |
| **name** | **String** | Unique name of the step in the engine |  |
| **param_bindings** | [**Array&lt;EngineParamBindingV2&gt;**](EngineParamBindingV2.md) | Bindings for the step parameters |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::StepConfigV2.new(
  for_each: abc123,
  id: abc123,
  label: PagerDuty Escalate,
  name: pagerduty.escalate,
  param_bindings: [{&quot;array_value&quot;:[{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}]
)
```

