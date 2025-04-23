# IncidentIoSdk::AlertRouteEscalationConfigV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auto_cancel_escalations** | **Boolean** | Should we auto cancel escalations when all alerts are resolved? |  |
| **escalation_targets** | [**Array&lt;AlertRouteEscalationTargetV2&gt;**](AlertRouteEscalationTargetV2.md) | Targets for escalation |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertRouteEscalationConfigV2.new(
  auto_cancel_escalations: false,
  escalation_targets: [{&quot;escalation_paths&quot;:{&quot;array_value&quot;:[{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}},&quot;users&quot;:{&quot;array_value&quot;:[{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}}]
)
```

