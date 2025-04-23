# IncidentIoSdk::IncidentTypeV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_in_triage** | **String** | Whether incidents of this must always, or can optionally, be created in triage |  |
| **created_at** | **Time** | When this resource was created |  |
| **description** | **String** | What is this incident type for? |  |
| **id** | **String** | Unique identifier for this Incident Type |  |
| **is_default** | **Boolean** | The default Incident Type is used when no other type is explicitly specified |  |
| **name** | **String** | The name of this Incident Type |  |
| **private_incidents_only** | **Boolean** | Should all incidents created with this Incident Type be private? |  |
| **updated_at** | **Time** | When this resource was last updated |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IncidentTypeV2.new(
  create_in_triage: always,
  created_at: 2021-08-17T13:28:57.801578Z,
  description: Customer facing production outages,
  id: 01FCNDV6P870EA6S7TK1DSYDG0,
  is_default: false,
  name: Production Outage,
  private_incidents_only: false,
  updated_at: 2021-08-17T13:28:57.801578Z
)
```

