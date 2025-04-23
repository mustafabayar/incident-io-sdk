# IncidentIoSdk::ConditionPayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operation** | **String** | The name of the operation on the subject |  |
| **param_bindings** | [**Array&lt;EngineParamBindingPayloadV2&gt;**](EngineParamBindingPayloadV2.md) | List of parameter bindings |  |
| **subject** | **String** | The reference of the subject in the trigger scope |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ConditionPayloadV2.new(
  operation: one_of,
  param_bindings: [{&quot;array_value&quot;:[{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],
  subject: incident.severity
)
```

