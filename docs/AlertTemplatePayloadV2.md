# IncidentIoSdk::AlertTemplatePayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**Array&lt;AlertTemplateAttributePayloadV2&gt;**](AlertTemplateAttributePayloadV2.md) | Attributes to set on alerts coming from this source, with a binding describing how to set them. |  |
| **description** | [**EngineParamBindingValuePayloadV2**](EngineParamBindingValuePayloadV2.md) |  |  |
| **expressions** | [**Array&lt;ExpressionPayloadV2&gt;**](ExpressionPayloadV2.md) | Expressions available for use in bindings within this template |  |
| **title** | [**EngineParamBindingValuePayloadV2**](EngineParamBindingValuePayloadV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertTemplatePayloadV2.new(
  attributes: [{&quot;alert_attribute_id&quot;:&quot;abc123&quot;,&quot;binding&quot;:{&quot;array_value&quot;:[{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}}],
  description: null,
  expressions: [{&quot;else_branch&quot;:{&quot;result&quot;:{&quot;array_value&quot;:[{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}},&quot;label&quot;:&quot;Team Slack channel&quot;,&quot;operations&quot;:[{&quot;branches&quot;:{&quot;branches&quot;:[{&quot;condition_groups&quot;:[{&quot;conditions&quot;:[{&quot;operation&quot;:&quot;one_of&quot;,&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],&quot;subject&quot;:&quot;incident.severity&quot;}]}],&quot;result&quot;:{&quot;array_value&quot;:[{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}}],&quot;returns&quot;:{&quot;array&quot;:true,&quot;type&quot;:&quot;IncidentStatus&quot;}},&quot;filter&quot;:{&quot;condition_groups&quot;:[{&quot;conditions&quot;:[{&quot;operation&quot;:&quot;one_of&quot;,&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],&quot;subject&quot;:&quot;incident.severity&quot;}]}]},&quot;navigate&quot;:{&quot;reference&quot;:&quot;catalog_attribute[\&quot;01FCNDV6P870EA6S7TK1DSYD5H\&quot;]&quot;},&quot;operation_type&quot;:&quot;navigate&quot;,&quot;parse&quot;:{&quot;returns&quot;:{&quot;array&quot;:true,&quot;type&quot;:&quot;IncidentStatus&quot;},&quot;source&quot;:&quot;metadata.annotations[\&quot;github.com/repo\&quot;]&quot;}}],&quot;reference&quot;:&quot;abc123&quot;,&quot;root_reference&quot;:&quot;incident.status&quot;}],
  title: null
)
```

