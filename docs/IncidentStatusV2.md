# IncidentIoSdk::IncidentStatusV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | **String** | What category of status it is. All statuses apart from live (renamed in the app to Active) and learning (renamed in the app to Post-incident) are managed by incident.io and cannot be configured |  |
| **created_at** | **Time** |  |  |
| **description** | **String** | Rich text description of the incident status |  |
| **id** | **String** | Unique ID of this incident status |  |
| **name** | **String** | Unique name of this status |  |
| **rank** | **Integer** | Order of this incident status |  |
| **updated_at** | **Time** |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IncidentStatusV2.new(
  category: triage,
  created_at: 2021-08-17T13:28:57.801578Z,
  description: Impact has been **fully mitigated**, and we&#39;re ready to learn from this incident.,
  id: 01FCNDV6P870EA6S7TK1DSYD5H,
  name: Closed,
  rank: 4,
  updated_at: 2021-08-17T13:28:57.801578Z
)
```

