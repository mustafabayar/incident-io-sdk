# IncidentIoSdk::AlertsListIncidentAlertsResultV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_alerts** | [**Array&lt;IncidentAlertV2&gt;**](IncidentAlertV2.md) |  |  |
| **pagination_meta** | [**PaginationMetaResultV2**](PaginationMetaResultV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertsListIncidentAlertsResultV2.new(
  incident_alerts: [{&quot;alert&quot;:{&quot;alert_source_id&quot;:&quot;01GW2G3V0S59R238FAHPDS1R66&quot;,&quot;created_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;deduplication_key&quot;:&quot;4293868629&quot;,&quot;description&quot;:&quot;CPU on the payments service has exceeded 75 percent for 5 minutes&quot;,&quot;id&quot;:&quot;01GW2G3V0S59R238FAHPDS1R66&quot;,&quot;resolved_at&quot;:&quot;2021-08-17T14:28:57.801578Z&quot;,&quot;source_url&quot;:&quot;https://www.my-alerting-platform.com/alerts/my-alert-123&quot;,&quot;status&quot;:&quot;firing&quot;,&quot;title&quot;:&quot;*errors.withMessage: PG::Error failed to connect&quot;,&quot;updated_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;},&quot;alert_route_id&quot;:&quot;01GW2G3V0S59R238FAHPDS1R67&quot;,&quot;id&quot;:&quot;01GW2G3V0S59R238FAHPDS1R66&quot;,&quot;incident&quot;:{&quot;external_id&quot;:123,&quot;id&quot;:&quot;01FDAG4SAP5TYPT98WGR2N7W91&quot;,&quot;name&quot;:&quot;Our database is sad&quot;,&quot;reference&quot;:&quot;INC-123&quot;,&quot;status_category&quot;:&quot;triage&quot;,&quot;summary&quot;:&quot;Our database is really really sad, and we don&#39;t know why yet.&quot;,&quot;visibility&quot;:&quot;public&quot;}}],
  pagination_meta: null
)
```

