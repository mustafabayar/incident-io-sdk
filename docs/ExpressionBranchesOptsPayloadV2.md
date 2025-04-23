# IncidentIoSdk::ExpressionBranchesOptsPayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **branches** | [**Array&lt;ExpressionBranchPayloadV2&gt;**](ExpressionBranchPayloadV2.md) | The branches to apply for this operation |  |
| **returns** | [**ReturnsMetaV2**](ReturnsMetaV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ExpressionBranchesOptsPayloadV2.new(
  branches: [{&quot;condition_groups&quot;:[{&quot;conditions&quot;:[{&quot;operation&quot;:&quot;one_of&quot;,&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],&quot;subject&quot;:&quot;incident.severity&quot;}]}],&quot;result&quot;:{&quot;array_value&quot;:[{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}}],
  returns: null
)
```

