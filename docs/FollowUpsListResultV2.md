# IncidentIoSdk::FollowUpsListResultV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **follow_ups** | [**Array&lt;FollowUpV2&gt;**](FollowUpV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::FollowUpsListResultV2.new(
  follow_ups: [{&quot;assignee&quot;:{&quot;email&quot;:&quot;lisa@incident.io&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Lisa Karlin Curtis&quot;,&quot;role&quot;:&quot;viewer&quot;,&quot;slack_user_id&quot;:&quot;U02AYNF2XJM&quot;},&quot;completed_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;created_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;description&quot;:&quot;Call the fire brigade&quot;,&quot;external_issue_reference&quot;:{&quot;issue_name&quot;:&quot;INC-123&quot;,&quot;issue_permalink&quot;:&quot;https://linear.app/incident-io/issue/INC-1609/find-copywriter-to-write-up&quot;,&quot;provider&quot;:&quot;asana&quot;},&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;incident_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;priority&quot;:{&quot;description&quot;:&quot;A follow-up that requires immediate attention.&quot;,&quot;id&quot;:&quot;01GNW4BAQ7XRMFF6FHKNXDFPRW&quot;,&quot;name&quot;:&quot;Urgent&quot;,&quot;rank&quot;:10},&quot;status&quot;:&quot;outstanding&quot;,&quot;title&quot;:&quot;Cat is stuck in the tree&quot;,&quot;updated_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;}]
)
```

