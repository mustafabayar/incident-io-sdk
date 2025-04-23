# IncidentIoSdk::IncidentUpdateV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** | When the update was created |  |
| **id** | **String** | Unique identifier for this incident update |  |
| **incident_id** | **String** | The incident this update relates to |  |
| **merged_into_incident_id** | **String** | The ID of the incident this incident was merged into, if the to state of this update is &#39;merged&#39;. | [optional] |
| **message** | **String** | Message that explains the context behind the update | [optional] |
| **new_incident_status** | [**IncidentStatusV2**](IncidentStatusV2.md) |  |  |
| **new_severity** | [**SeverityV2**](SeverityV2.md) |  | [optional] |
| **updater** | [**ActorV2**](ActorV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IncidentUpdateV2.new(
  created_at: 2021-08-17T13:28:57.801578Z,
  id: 01FCNDV6P870EA6S7TK1DSYDG0,
  incident_id: 01FCNDV6P870EA6S7TK1DSYDG0,
  merged_into_incident_id: 01FCNDV6P870EA6S7TK1DSYDG0,
  message: We&#39;re working on a fix, hoping to ship in the next 30 minutes,
  new_incident_status: null,
  new_severity: null,
  updater: null
)
```

