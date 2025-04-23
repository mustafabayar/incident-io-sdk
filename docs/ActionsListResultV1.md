# IncidentIoSdk::ActionsListResultV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actions** | [**Array&lt;ActionV1&gt;**](ActionV1.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ActionsListResultV1.new(
  actions: [{&quot;assignee&quot;:{&quot;email&quot;:&quot;lisa@incident.io&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Lisa Karlin Curtis&quot;,&quot;role&quot;:&quot;viewer&quot;,&quot;slack_user_id&quot;:&quot;U02AYNF2XJM&quot;},&quot;completed_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;created_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;description&quot;:&quot;Call the fire brigade&quot;,&quot;external_issue_reference&quot;:{&quot;issue_name&quot;:&quot;INC-123&quot;,&quot;issue_permalink&quot;:&quot;https://linear.app/incident-io/issue/INC-1609/find-copywriter-to-write-up&quot;,&quot;provider&quot;:&quot;asana&quot;},&quot;follow_up&quot;:true,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;incident_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;status&quot;:&quot;outstanding&quot;,&quot;updated_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;}]
)
```

