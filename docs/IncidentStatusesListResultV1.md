# IncidentIoSdk::IncidentStatusesListResultV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_statuses** | [**Array&lt;IncidentStatusV1&gt;**](IncidentStatusV1.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IncidentStatusesListResultV1.new(
  incident_statuses: [{&quot;category&quot;:&quot;triage&quot;,&quot;created_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;description&quot;:&quot;Impact has been **fully mitigated**, and we&#39;re ready to learn from this incident.&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYD5H&quot;,&quot;name&quot;:&quot;Closed&quot;,&quot;rank&quot;:4,&quot;updated_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;}]
)
```

