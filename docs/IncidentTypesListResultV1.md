# IncidentIoSdk::IncidentTypesListResultV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_types** | [**Array&lt;IncidentTypeV1&gt;**](IncidentTypeV1.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IncidentTypesListResultV1.new(
  incident_types: [{&quot;create_in_triage&quot;:&quot;always&quot;,&quot;created_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;description&quot;:&quot;Customer facing production outages&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;is_default&quot;:false,&quot;name&quot;:&quot;Production Outage&quot;,&quot;private_incidents_only&quot;:false,&quot;updated_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;}]
)
```

