# IncidentIoSdk::AlertRouteAlertSourcePayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alert_source_id** | **String** | The alert source ID that will match for the route |  |
| **condition_groups** | [**Array&lt;ConditionGroupPayloadV2&gt;**](ConditionGroupPayloadV2.md) | What conditions should alerts from this source meet to be included in this alert route? |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertRouteAlertSourcePayloadV2.new(
  alert_source_id: 01FCNDV6P870EA6S7TK1DSYDG0,
  condition_groups: [{&quot;conditions&quot;:[{&quot;operation&quot;:&quot;one_of&quot;,&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],&quot;subject&quot;:&quot;incident.severity&quot;}]}]
)
```

