# IncidentIoSdk::ExpressionPayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **else_branch** | [**ExpressionElseBranchPayloadV2**](ExpressionElseBranchPayloadV2.md) |  | [optional] |
| **label** | **String** | The human readable label of the expression |  |
| **operations** | [**Array&lt;ExpressionOperationPayloadV2&gt;**](ExpressionOperationPayloadV2.md) |  |  |
| **reference** | **String** | A short ID that can be used to reference the expression |  |
| **root_reference** | **String** | The root reference for this expression (i.e. where the expression starts) |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ExpressionPayloadV2.new(
  else_branch: null,
  label: Team Slack channel,
  operations: [{&quot;branches&quot;:{&quot;branches&quot;:[{&quot;condition_groups&quot;:[{&quot;conditions&quot;:[{&quot;operation&quot;:&quot;one_of&quot;,&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],&quot;subject&quot;:&quot;incident.severity&quot;}]}],&quot;result&quot;:{&quot;array_value&quot;:[{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}}],&quot;returns&quot;:{&quot;array&quot;:true,&quot;type&quot;:&quot;IncidentStatus&quot;}},&quot;filter&quot;:{&quot;condition_groups&quot;:[{&quot;conditions&quot;:[{&quot;operation&quot;:&quot;one_of&quot;,&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],&quot;subject&quot;:&quot;incident.severity&quot;}]}]},&quot;navigate&quot;:{&quot;reference&quot;:&quot;catalog_attribute[\&quot;01FCNDV6P870EA6S7TK1DSYD5H\&quot;]&quot;},&quot;operation_type&quot;:&quot;navigate&quot;,&quot;parse&quot;:{&quot;returns&quot;:{&quot;array&quot;:true,&quot;type&quot;:&quot;IncidentStatus&quot;},&quot;source&quot;:&quot;metadata.annotations[\&quot;github.com/repo\&quot;]&quot;}}],
  reference: abc123,
  root_reference: incident.status
)
```

