# IncidentIoSdk::ConditionGroupPayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conditions** | [**Array&lt;ConditionPayloadV2&gt;**](ConditionPayloadV2.md) | All conditions in this list must be satisfied for the group to be satisfied |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ConditionGroupPayloadV2.new(
  conditions: [{&quot;operation&quot;:&quot;one_of&quot;,&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],&quot;subject&quot;:&quot;incident.severity&quot;}]
)
```

