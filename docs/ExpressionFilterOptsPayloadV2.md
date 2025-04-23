# IncidentIoSdk::ExpressionFilterOptsPayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **condition_groups** | [**Array&lt;ConditionGroupPayloadV2&gt;**](ConditionGroupPayloadV2.md) | The condition groups to apply in this filter. Only one group needs to be satisfied for the filter to pass. |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ExpressionFilterOptsPayloadV2.new(
  condition_groups: [{&quot;conditions&quot;:[{&quot;operation&quot;:&quot;one_of&quot;,&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],&quot;subject&quot;:&quot;incident.severity&quot;}]}]
)
```

