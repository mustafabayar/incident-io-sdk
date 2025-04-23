# IncidentIoSdk::AlertRouteV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alert_sources** | [**Array&lt;AlertRouteAlertSourceV2&gt;**](AlertRouteAlertSourceV2.md) | Which alert sources should this alert route match? |  |
| **channel_config** | [**Array&lt;AlertRouteChannelConfigV2&gt;**](AlertRouteChannelConfigV2.md) | The channel configuration for this alert route |  |
| **condition_groups** | [**Array&lt;ConditionGroupV2&gt;**](ConditionGroupV2.md) | What condition groups must be true for this alert route to fire? |  |
| **created_at** | **Time** | The time of creation of this alert route | [optional] |
| **enabled** | **Boolean** | Whether this alert route is enabled or not |  |
| **escalation_config** | [**AlertRouteEscalationConfigV2**](AlertRouteEscalationConfigV2.md) |  |  |
| **expressions** | [**Array&lt;ExpressionV2&gt;**](ExpressionV2.md) | The expressions used in this template |  |
| **id** | **String** | Unique identifier for this alert route config |  |
| **incident_config** | [**AlertRouteIncidentConfigV2**](AlertRouteIncidentConfigV2.md) |  |  |
| **incident_template** | [**AlertRouteIncidentTemplateV2**](AlertRouteIncidentTemplateV2.md) |  |  |
| **is_private** | **Boolean** | Whether this alert route is private. Private alert routes will only create private incidents from alerts. |  |
| **name** | **String** | The name of this alert route config, for the user&#39;s reference |  |
| **updated_at** | **Time** | The time of last update of this alert route | [optional] |
| **version** | **Integer** | The version of this alert route config |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertRouteV2.new(
  alert_sources: [{&quot;alert_source_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;condition_groups&quot;:[{&quot;conditions&quot;:[{&quot;operation&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;value&quot;:&quot;01FCQSP07Z74QMMYPDDGQB9FTG&quot;},&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],&quot;subject&quot;:{&quot;label&quot;:&quot;Incident Severity&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}]}]}],
  channel_config: [{&quot;condition_groups&quot;:[{&quot;conditions&quot;:[{&quot;operation&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;value&quot;:&quot;01FCQSP07Z74QMMYPDDGQB9FTG&quot;},&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],&quot;subject&quot;:{&quot;label&quot;:&quot;Incident Severity&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}]}],&quot;ms_teams_targets&quot;:{&quot;binding&quot;:{&quot;array_value&quot;:[{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}},&quot;channel_visibility&quot;:&quot;abc123&quot;},&quot;slack_targets&quot;:{&quot;binding&quot;:{&quot;array_value&quot;:[{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}},&quot;channel_visibility&quot;:&quot;abc123&quot;}}],
  condition_groups: [{&quot;conditions&quot;:[{&quot;operation&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;value&quot;:&quot;01FCQSP07Z74QMMYPDDGQB9FTG&quot;},&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],&quot;subject&quot;:{&quot;label&quot;:&quot;Incident Severity&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}]}],
  created_at: 2021-08-17T13:28:57.801578Z,
  enabled: false,
  escalation_config: null,
  expressions: [{&quot;else_branch&quot;:{&quot;result&quot;:{&quot;array_value&quot;:[{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}},&quot;label&quot;:&quot;Team Slack channel&quot;,&quot;operations&quot;:[{&quot;branches&quot;:{&quot;branches&quot;:[{&quot;condition_groups&quot;:[{&quot;conditions&quot;:[{&quot;operation&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;value&quot;:&quot;01FCQSP07Z74QMMYPDDGQB9FTG&quot;},&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],&quot;subject&quot;:{&quot;label&quot;:&quot;Incident Severity&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}]}],&quot;result&quot;:{&quot;array_value&quot;:[{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}}],&quot;returns&quot;:{&quot;array&quot;:true,&quot;type&quot;:&quot;IncidentStatus&quot;}},&quot;filter&quot;:{&quot;condition_groups&quot;:[{&quot;conditions&quot;:[{&quot;operation&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;value&quot;:&quot;01FCQSP07Z74QMMYPDDGQB9FTG&quot;},&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],&quot;subject&quot;:{&quot;label&quot;:&quot;Incident Severity&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}]}]},&quot;navigate&quot;:{&quot;reference&quot;:&quot;1235&quot;,&quot;reference_label&quot;:&quot;Teams&quot;},&quot;operation_type&quot;:&quot;navigate&quot;,&quot;parse&quot;:{&quot;returns&quot;:{&quot;array&quot;:true,&quot;type&quot;:&quot;IncidentStatus&quot;},&quot;source&quot;:&quot;metadata.annotations[\&quot;github.com/repo\&quot;]&quot;},&quot;returns&quot;:{&quot;array&quot;:true,&quot;type&quot;:&quot;IncidentStatus&quot;}}],&quot;reference&quot;:&quot;abc123&quot;,&quot;returns&quot;:{&quot;array&quot;:true,&quot;type&quot;:&quot;IncidentStatus&quot;},&quot;root_reference&quot;:&quot;incident.status&quot;}],
  id: 01FCNDV6P870EA6S7TK1DSYDG0,
  incident_config: null,
  incident_template: null,
  is_private: false,
  name: Production incidents,
  updated_at: 2021-08-17T13:28:57.801578Z,
  version: 1
)
```

