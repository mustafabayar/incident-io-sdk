# IncidentIoSdk::ActionsListResultV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actions** | [**Array&lt;ActionV2&gt;**](ActionV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ActionsListResultV2.new(
  actions: [{&quot;assignee&quot;:{&quot;email&quot;:&quot;lisa@incident.io&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Lisa Karlin Curtis&quot;,&quot;role&quot;:&quot;viewer&quot;,&quot;slack_user_id&quot;:&quot;U02AYNF2XJM&quot;},&quot;completed_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;created_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;description&quot;:&quot;Call the fire brigade&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;incident_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;status&quot;:&quot;outstanding&quot;,&quot;updated_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;}]
)
```

