# IncidentIoSdk::WorkflowsUpdateWorkflowPayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **annotations** | **Hash&lt;String, String&gt;** | Annotations that track metadata about this resource | [optional] |
| **condition_groups** | [**Array&lt;ConditionGroupPayloadV2&gt;**](ConditionGroupPayloadV2.md) | Conditions that apply to the workflow trigger |  |
| **continue_on_step_error** | **Boolean** | Whether to continue executing the workflow if a step fails |  |
| **delay** | [**WorkflowDelayV2**](WorkflowDelayV2.md) |  | [optional] |
| **expressions** | [**Array&lt;ExpressionPayloadV2&gt;**](ExpressionPayloadV2.md) | The expressions to use in the workflow |  |
| **folder** | **String** | Folder to display the workflow in | [optional] |
| **include_private_incidents** | **Boolean** | Whether to include private incidents |  |
| **name** | **String** | Name provided by the user when creating the workflow |  |
| **once_for** | **Array&lt;String&gt;** | This workflow will run &#39;once for&#39; a list of references |  |
| **runs_on_incident_modes** | **Array&lt;String&gt;** | Which incident modes should this workflow run on? By default, workflows only run on standard incidents, but can also be configured to run on test and retrospective incidents. |  |
| **runs_on_incidents** | **String** | Which incidents should the workflow be applied to? |  |
| **shortform** | **String** | The shortform used to trigger this workflow (only applicable for manual triggers) | [optional] |
| **state** | **String** | What state this workflow is in | [optional] |
| **steps** | [**Array&lt;StepConfigPayloadV2&gt;**](StepConfigPayloadV2.md) | Steps that are executed as part of the workflow |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::WorkflowsUpdateWorkflowPayloadV2.new(
  annotations: {&quot;incident.io/terraform/version&quot;:&quot;3.0.0&quot;},
  condition_groups: [{&quot;conditions&quot;:[{&quot;operation&quot;:&quot;one_of&quot;,&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],&quot;subject&quot;:&quot;incident.severity&quot;}]}],
  continue_on_step_error: true,
  delay: null,
  expressions: [{&quot;else_branch&quot;:{&quot;result&quot;:{&quot;array_value&quot;:[{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}},&quot;label&quot;:&quot;Team Slack channel&quot;,&quot;operations&quot;:[{&quot;branches&quot;:{&quot;branches&quot;:[{&quot;condition_groups&quot;:[{&quot;conditions&quot;:[{&quot;operation&quot;:&quot;one_of&quot;,&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],&quot;subject&quot;:&quot;incident.severity&quot;}]}],&quot;result&quot;:{&quot;array_value&quot;:[{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}}],&quot;returns&quot;:{&quot;array&quot;:true,&quot;type&quot;:&quot;IncidentStatus&quot;}},&quot;filter&quot;:{&quot;condition_groups&quot;:[{&quot;conditions&quot;:[{&quot;operation&quot;:&quot;one_of&quot;,&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],&quot;subject&quot;:&quot;incident.severity&quot;}]}]},&quot;navigate&quot;:{&quot;reference&quot;:&quot;catalog_attribute[\&quot;01FCNDV6P870EA6S7TK1DSYD5H\&quot;]&quot;},&quot;operation_type&quot;:&quot;navigate&quot;,&quot;parse&quot;:{&quot;returns&quot;:{&quot;array&quot;:true,&quot;type&quot;:&quot;IncidentStatus&quot;},&quot;source&quot;:&quot;metadata.annotations[\&quot;github.com/repo\&quot;]&quot;}}],&quot;reference&quot;:&quot;abc123&quot;,&quot;root_reference&quot;:&quot;incident.status&quot;}],
  folder: My folder 01,
  include_private_incidents: true,
  name: My little workflow,
  once_for: [&quot;incident.url&quot;],
  runs_on_incident_modes: [&quot;standard&quot;,&quot;test&quot;,&quot;retrospective&quot;],
  runs_on_incidents: newly_created,
  shortform: page-the-ceo,
  state: active,
  steps: [{&quot;for_each&quot;:&quot;abc123&quot;,&quot;id&quot;:&quot;abc123&quot;,&quot;name&quot;:&quot;pagerduty.escalate&quot;,&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}]}]
)
```

