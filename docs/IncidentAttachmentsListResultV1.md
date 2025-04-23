# IncidentIoSdk::IncidentAttachmentsListResultV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_attachments** | [**Array&lt;IncidentAttachmentV1&gt;**](IncidentAttachmentV1.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IncidentAttachmentsListResultV1.new(
  incident_attachments: [{&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYD5H&quot;,&quot;incident_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYD5H&quot;,&quot;resource&quot;:{&quot;external_id&quot;:&quot;123&quot;,&quot;permalink&quot;:&quot;https://my.pagerduty.com/incidents/ABC&quot;,&quot;resource_type&quot;:&quot;pager_duty_incident&quot;,&quot;title&quot;:&quot;The database has gone down&quot;}}]
)
```

