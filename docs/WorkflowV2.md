# IncidentIoSdk::WorkflowV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **condition_groups** | [**Array&lt;ConditionGroupV2&gt;**](ConditionGroupV2.md) | Conditions that apply to the workflow trigger |  |
| **continue_on_step_error** | **Boolean** | Whether to continue executing the workflow if a step fails |  |
| **delay** | [**WorkflowDelayV2**](WorkflowDelayV2.md) |  | [optional] |
| **expressions** | [**Array&lt;ExpressionV2&gt;**](ExpressionV2.md) | Expressions that make variables available in the scope |  |
| **folder** | **String** | Folder to display the workflow in | [optional] |
| **id** | **String** | Unique identifier for the workflow |  |
| **include_private_incidents** | **Boolean** | Whether to include private incidents |  |
| **name** | **String** | Name provided by the user when creating the workflow |  |
| **once_for** | [**Array&lt;EngineReferenceV2&gt;**](EngineReferenceV2.md) | This workflow will run &#39;once for&#39; a list of references |  |
| **runs_from** | **Time** | The time from which this workflow will run on incidents | [optional] |
| **runs_on_incident_modes** | **Array&lt;String&gt;** | Which incident modes should this workflow run on? By default, workflows only run on standard incidents, but can also be configured to run on test and retrospective incidents. |  |
| **runs_on_incidents** | **String** | Which incidents should the workflow be applied to? |  |
| **shortform** | **String** | The shortform used to trigger this workflow (only applicable for manual triggers) | [optional] |
| **state** | **String** | What state this workflow is in |  |
| **steps** | [**Array&lt;StepConfigV2&gt;**](StepConfigV2.md) | Steps that are executed as part of the workflow |  |
| **trigger** | [**TriggerSlimV2**](TriggerSlimV2.md) |  |  |
| **version** | **Integer** | Revision of the workflow, uniquely identifying it&#39;s version |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::WorkflowV2.new(
  condition_groups: [{&quot;conditions&quot;:[{&quot;operation&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;value&quot;:&quot;01FCQSP07Z74QMMYPDDGQB9FTG&quot;},&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],&quot;subject&quot;:{&quot;label&quot;:&quot;Incident Severity&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}]}],
  continue_on_step_error: true,
  delay: null,
  expressions: [{&quot;else_branch&quot;:{&quot;result&quot;:{&quot;array_value&quot;:[{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}},&quot;label&quot;:&quot;Team Slack channel&quot;,&quot;operations&quot;:[{&quot;branches&quot;:{&quot;branches&quot;:[{&quot;condition_groups&quot;:[{&quot;conditions&quot;:[{&quot;operation&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;value&quot;:&quot;01FCQSP07Z74QMMYPDDGQB9FTG&quot;},&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],&quot;subject&quot;:{&quot;label&quot;:&quot;Incident Severity&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}]}],&quot;result&quot;:{&quot;array_value&quot;:[{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}}],&quot;returns&quot;:{&quot;array&quot;:true,&quot;type&quot;:&quot;IncidentStatus&quot;}},&quot;filter&quot;:{&quot;condition_groups&quot;:[{&quot;conditions&quot;:[{&quot;operation&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;value&quot;:&quot;01FCQSP07Z74QMMYPDDGQB9FTG&quot;},&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],&quot;subject&quot;:{&quot;label&quot;:&quot;Incident Severity&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}]}]},&quot;navigate&quot;:{&quot;reference&quot;:&quot;1235&quot;,&quot;reference_label&quot;:&quot;Teams&quot;},&quot;operation_type&quot;:&quot;navigate&quot;,&quot;parse&quot;:{&quot;returns&quot;:{&quot;array&quot;:true,&quot;type&quot;:&quot;IncidentStatus&quot;},&quot;source&quot;:&quot;metadata.annotations[\&quot;github.com/repo\&quot;]&quot;},&quot;returns&quot;:{&quot;array&quot;:true,&quot;type&quot;:&quot;IncidentStatus&quot;}}],&quot;reference&quot;:&quot;abc123&quot;,&quot;returns&quot;:{&quot;array&quot;:true,&quot;type&quot;:&quot;IncidentStatus&quot;},&quot;root_reference&quot;:&quot;incident.status&quot;}],
  folder: My folder 01,
  id: 01FCNDV6P870EA6S7TK1DSYDG0,
  include_private_incidents: true,
  name: My little workflow,
  once_for: [{&quot;array&quot;:false,&quot;key&quot;:&quot;incident.custom_field[\&quot;01FCNDV6P870EA6S7TK1DSYDG0\&quot;]&quot;,&quot;label&quot;:&quot;Incident -&gt; Affected Team&quot;,&quot;type&quot;:&quot;IncidentSeverity&quot;}],
  runs_from: 2021-08-17T13:28:57.801578Z,
  runs_on_incident_modes: [&quot;standard&quot;,&quot;test&quot;,&quot;retrospective&quot;],
  runs_on_incidents: newly_created,
  shortform: page-the-ceo,
  state: active,
  steps: [{&quot;for_each&quot;:&quot;abc123&quot;,&quot;id&quot;:&quot;abc123&quot;,&quot;label&quot;:&quot;PagerDuty Escalate&quot;,&quot;name&quot;:&quot;pagerduty.escalate&quot;,&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}]}],
  trigger: null,
  version: 3
)
```

