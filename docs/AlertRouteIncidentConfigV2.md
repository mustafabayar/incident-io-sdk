# IncidentIoSdk::AlertRouteIncidentConfigV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auto_decline_enabled** | **Boolean** | Should triage incidents be declined when alerts are resolved? |  |
| **condition_groups** | [**Array&lt;ConditionGroupV2&gt;**](ConditionGroupV2.md) | What condition groups must be true for this alert route to create an incident? |  |
| **defer_time_seconds** | **Integer** | How long should the escalation defer time be? |  |
| **enabled** | **Boolean** | Whether incident creation is enabled for this alert route |  |
| **grouping_keys** | [**Array&lt;GroupingKeyV2&gt;**](GroupingKeyV2.md) | Which attributes should this alert route use to group alerts? |  |
| **grouping_window_seconds** | **Integer** | How large should the grouping window be? |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertRouteIncidentConfigV2.new(
  auto_decline_enabled: false,
  condition_groups: [{&quot;conditions&quot;:[{&quot;operation&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;value&quot;:&quot;01FCQSP07Z74QMMYPDDGQB9FTG&quot;},&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],&quot;subject&quot;:{&quot;label&quot;:&quot;Incident Severity&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}]}],
  defer_time_seconds: 1,
  enabled: false,
  grouping_keys: [{&quot;reference&quot;:&quot;alert.title&quot;}],
  grouping_window_seconds: 1
)
```

