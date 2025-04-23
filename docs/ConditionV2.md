# IncidentIoSdk::ConditionV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operation** | [**ConditionOperationV2**](ConditionOperationV2.md) |  |  |
| **param_bindings** | [**Array&lt;EngineParamBindingV2&gt;**](EngineParamBindingV2.md) | Bindings for the operation parameters |  |
| **subject** | [**ConditionSubjectV2**](ConditionSubjectV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ConditionV2.new(
  operation: null,
  param_bindings: [{&quot;array_value&quot;:[{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],
  subject: null
)
```

