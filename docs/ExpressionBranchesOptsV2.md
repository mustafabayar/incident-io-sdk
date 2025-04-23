# IncidentIoSdk::ExpressionBranchesOptsV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **branches** | [**Array&lt;ExpressionBranchV2&gt;**](ExpressionBranchV2.md) | The branches to apply for this operation |  |
| **returns** | [**ReturnsMetaV2**](ReturnsMetaV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ExpressionBranchesOptsV2.new(
  branches: [{&quot;condition_groups&quot;:[{&quot;conditions&quot;:[{&quot;operation&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;value&quot;:&quot;01FCQSP07Z74QMMYPDDGQB9FTG&quot;},&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],&quot;subject&quot;:{&quot;label&quot;:&quot;Incident Severity&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}]}],&quot;result&quot;:{&quot;array_value&quot;:[{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}}],
  returns: null
)
```

