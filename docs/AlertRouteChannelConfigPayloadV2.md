# IncidentIoSdk::AlertRouteChannelConfigPayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **condition_groups** | [**Array&lt;ConditionGroupPayloadV2&gt;**](ConditionGroupPayloadV2.md) | The conditions that must be met for this channel config to be used |  |
| **ms_teams_targets** | [**AlertRouteChannelTargetPayloadV2**](AlertRouteChannelTargetPayloadV2.md) |  | [optional] |
| **slack_targets** | [**AlertRouteChannelTargetPayloadV2**](AlertRouteChannelTargetPayloadV2.md) |  | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertRouteChannelConfigPayloadV2.new(
  condition_groups: [{&quot;conditions&quot;:[{&quot;operation&quot;:&quot;one_of&quot;,&quot;param_bindings&quot;:[{&quot;array_value&quot;:[{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}],&quot;subject&quot;:&quot;incident.severity&quot;}]}],
  ms_teams_targets: null,
  slack_targets: null
)
```

