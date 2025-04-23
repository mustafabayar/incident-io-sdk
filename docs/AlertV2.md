# IncidentIoSdk::AlertV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alert_source_id** | **String** | The ID of the alert source this alert fired on |  |
| **attributes** | [**Array&lt;AlertAttributeEntryV2&gt;**](AlertAttributeEntryV2.md) | Attribute values parsed from the alerts payload |  |
| **created_at** | **Time** | When this entry was created |  |
| **deduplication_key** | **String** | A deduplication key which uniquely references this alert from your alert source. If you send an event with the same deduplication_key multiple times, only one alert will be created in incident.io for this alert source config. You can filter on this field to find the alert created by an event you&#39;ve sent us. |  |
| **description** | **String** | The description of the alert | [optional] |
| **id** | **String** | The ID of this alert |  |
| **resolved_at** | **Time** | When this alert was resolved | [optional] |
| **source_url** | **String** | If applicable, a link to the alert in the upstream system | [optional] |
| **status** | **String** | Statuses of an alert |  |
| **title** | **String** | The title of the alert, parsed from the alert payload according to the alert source configuration |  |
| **updated_at** | **Time** | When this alert was last updated |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertV2.new(
  alert_source_id: 01GW2G3V0S59R238FAHPDS1R66,
  attributes: [{&quot;array_value&quot;:[{&quot;catalog_entry&quot;:{&quot;catalog_type_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Primary On-call&quot;},&quot;label&quot;:&quot;Payments Team&quot;,&quot;literal&quot;:&quot;SEV123&quot;}],&quot;attribute&quot;:{&quot;array&quot;:false,&quot;id&quot;:&quot;01GW2G3V0S59R238FAHPDS1R66&quot;,&quot;name&quot;:&quot;service&quot;,&quot;type&quot;:&quot;CatalogEntry[\&quot;01GW2G3V0S59R238FAHPDS1R67\&quot;]&quot;},&quot;value&quot;:{&quot;catalog_entry&quot;:{&quot;catalog_type_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Primary On-call&quot;},&quot;label&quot;:&quot;Payments Team&quot;,&quot;literal&quot;:&quot;SEV123&quot;}}],
  created_at: 2021-08-17T13:28:57.801578Z,
  deduplication_key: 4293868629,
  description: CPU on the payments service has exceeded 75 percent for 5 minutes,
  id: 01GW2G3V0S59R238FAHPDS1R66,
  resolved_at: 2021-08-17T14:28:57.801578Z,
  source_url: https://www.my-alerting-platform.com/alerts/my-alert-123,
  status: firing,
  title: *errors.withMessage: PG::Error failed to connect,
  updated_at: 2021-08-17T13:28:57.801578Z
)
```

