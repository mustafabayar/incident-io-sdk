# IncidentIoSdk::AlertsListResultV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alerts** | [**Array&lt;AlertV2&gt;**](AlertV2.md) |  |  |
| **pagination_meta** | [**PaginationMetaResultV2**](PaginationMetaResultV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertsListResultV2.new(
  alerts: [{&quot;alert_source_id&quot;:&quot;01GW2G3V0S59R238FAHPDS1R66&quot;,&quot;attributes&quot;:[{&quot;array_value&quot;:[{&quot;catalog_entry&quot;:{&quot;catalog_type_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Primary On-call&quot;},&quot;label&quot;:&quot;Payments Team&quot;,&quot;literal&quot;:&quot;SEV123&quot;}],&quot;attribute&quot;:{&quot;array&quot;:false,&quot;id&quot;:&quot;01GW2G3V0S59R238FAHPDS1R66&quot;,&quot;name&quot;:&quot;service&quot;,&quot;type&quot;:&quot;CatalogEntry[\&quot;01GW2G3V0S59R238FAHPDS1R67\&quot;]&quot;},&quot;value&quot;:{&quot;catalog_entry&quot;:{&quot;catalog_type_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Primary On-call&quot;},&quot;label&quot;:&quot;Payments Team&quot;,&quot;literal&quot;:&quot;SEV123&quot;}}],&quot;created_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;deduplication_key&quot;:&quot;4293868629&quot;,&quot;description&quot;:&quot;CPU on the payments service has exceeded 75 percent for 5 minutes&quot;,&quot;id&quot;:&quot;01GW2G3V0S59R238FAHPDS1R66&quot;,&quot;resolved_at&quot;:&quot;2021-08-17T14:28:57.801578Z&quot;,&quot;source_url&quot;:&quot;https://www.my-alerting-platform.com/alerts/my-alert-123&quot;,&quot;status&quot;:&quot;firing&quot;,&quot;title&quot;:&quot;*errors.withMessage: PG::Error failed to connect&quot;,&quot;updated_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;}],
  pagination_meta: null
)
```

