# IncidentIoSdk::CatalogListEntriesResultV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_entries** | [**Array&lt;CatalogEntryV2&gt;**](CatalogEntryV2.md) |  |  |
| **catalog_type** | [**CatalogTypeV2**](CatalogTypeV2.md) |  |  |
| **pagination_meta** | [**PaginationMetaResultV2**](PaginationMetaResultV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CatalogListEntriesResultV2.new(
  catalog_entries: [{&quot;aliases&quot;:[&quot;lawrence@incident.io&quot;,&quot;lawrence&quot;],&quot;archived_at&quot;:&quot;2021-08-17T14:28:57.801578Z&quot;,&quot;attribute_values&quot;:{&quot;abc123&quot;:{&quot;array_value&quot;:[{&quot;catalog_entry&quot;:{&quot;archived_at&quot;:&quot;2021-08-17T14:28:57.801578Z&quot;,&quot;catalog_entry_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;catalog_entry_name&quot;:&quot;Primary escalation&quot;,&quot;catalog_type_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;},&quot;helptext&quot;:&quot;abc123&quot;,&quot;image_url&quot;:&quot;abc123&quot;,&quot;is_image_slack_icon&quot;:false,&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;,&quot;sort_key&quot;:&quot;abc123&quot;,&quot;unavailable&quot;:false,&quot;value&quot;:&quot;abc123&quot;}],&quot;value&quot;:{&quot;catalog_entry&quot;:{&quot;archived_at&quot;:&quot;2021-08-17T14:28:57.801578Z&quot;,&quot;catalog_entry_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;catalog_entry_name&quot;:&quot;Primary escalation&quot;,&quot;catalog_type_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;},&quot;helptext&quot;:&quot;abc123&quot;,&quot;image_url&quot;:&quot;abc123&quot;,&quot;is_image_slack_icon&quot;:false,&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;,&quot;sort_key&quot;:&quot;abc123&quot;,&quot;unavailable&quot;:false,&quot;value&quot;:&quot;abc123&quot;}}},&quot;catalog_type_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;created_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;external_id&quot;:&quot;761722cd-d1d7-477b-ac7e-90f9e079dc33&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Primary On-call&quot;,&quot;rank&quot;:3,&quot;updated_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;}],
  catalog_type: null,
  pagination_meta: null
)
```

