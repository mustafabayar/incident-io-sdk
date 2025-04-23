# IncidentIoSdk::IncidentUpdatesListResultV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_updates** | [**Array&lt;IncidentUpdateV2&gt;**](IncidentUpdateV2.md) |  |  |
| **pagination_meta** | [**PaginationMetaResultV2**](PaginationMetaResultV2.md) |  | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IncidentUpdatesListResultV2.new(
  incident_updates: [{&quot;created_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;incident_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;merged_into_incident_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;message&quot;:&quot;We&#39;re working on a fix, hoping to ship in the next 30 minutes&quot;,&quot;new_incident_status&quot;:{&quot;category&quot;:&quot;triage&quot;,&quot;created_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;description&quot;:&quot;Impact has been **fully mitigated**, and we&#39;re ready to learn from this incident.&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYD5H&quot;,&quot;name&quot;:&quot;Closed&quot;,&quot;rank&quot;:4,&quot;updated_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;},&quot;new_severity&quot;:{&quot;created_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;description&quot;:&quot;Issues with **low impact**.&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Minor&quot;,&quot;rank&quot;:1,&quot;updated_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;},&quot;updater&quot;:{&quot;api_key&quot;:{&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;My test API key&quot;},&quot;user&quot;:{&quot;email&quot;:&quot;lisa@incident.io&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Lisa Karlin Curtis&quot;,&quot;role&quot;:&quot;viewer&quot;,&quot;slack_user_id&quot;:&quot;U02AYNF2XJM&quot;}}}],
  pagination_meta: null
)
```

