# IncidentIoSdk::ExpressionV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **else_branch** | [**ExpressionElseBranchV2**](ExpressionElseBranchV2.md) |  | [optional] |
| **label** | **String** | The human readable label of the expression |  |
| **operations** | [**Array&lt;ExpressionOperationV2&gt;**](ExpressionOperationV2.md) |  |  |
| **reference** | **String** | A short ID that can be used to reference the expression |  |
| **returns** | [**ReturnsMetaV2**](ReturnsMetaV2.md) |  |  |
| **root_reference** | **String** | The root reference for this expression (i.e. where the expression starts) |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ExpressionV2.new(
  else_branch: null,
  label: Team Slack channel,
  operations: [{&quot;branches&quot;:{&quot;branches&quot;:[{&quot;condition_groups&quot;:[{&quot;conditions&quot;:[{&quot;operation&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;value&quot;:&quot;01FCQSP07Z74QMMYPDDGQB9FTG&quot;},&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],&quot;subject&quot;:{&quot;label&quot;:&quot;Incident Severity&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}]}],&quot;result&quot;:{&quot;array_value&quot;:[{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}}],&quot;returns&quot;:{&quot;array&quot;:true,&quot;type&quot;:&quot;IncidentStatus&quot;}},&quot;filter&quot;:{&quot;condition_groups&quot;:[{&quot;conditions&quot;:[{&quot;operation&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;value&quot;:&quot;01FCQSP07Z74QMMYPDDGQB9FTG&quot;},&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],&quot;subject&quot;:{&quot;label&quot;:&quot;Incident Severity&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}]}]},&quot;navigate&quot;:{&quot;reference&quot;:&quot;1235&quot;,&quot;reference_label&quot;:&quot;Teams&quot;},&quot;operation_type&quot;:&quot;navigate&quot;,&quot;parse&quot;:{&quot;returns&quot;:{&quot;array&quot;:true,&quot;type&quot;:&quot;IncidentStatus&quot;},&quot;source&quot;:&quot;metadata.annotations[\&quot;github.com/repo\&quot;]&quot;},&quot;returns&quot;:{&quot;array&quot;:true,&quot;type&quot;:&quot;IncidentStatus&quot;}}],
  reference: abc123,
  returns: null,
  root_reference: incident.status
)
```

