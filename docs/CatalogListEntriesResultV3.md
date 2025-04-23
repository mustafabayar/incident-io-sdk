# IncidentIoSdk::CatalogListEntriesResultV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_entries** | [**Array&lt;CatalogEntryV3&gt;**](CatalogEntryV3.md) |  |  |
| **catalog_type** | [**CatalogTypeV3**](CatalogTypeV3.md) |  |  |
| **pagination_meta** | [**PaginationMetaResultV3**](PaginationMetaResultV3.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CatalogListEntriesResultV3.new(
  catalog_entries: [{&quot;aliases&quot;:[&quot;lawrence@incident.io&quot;,&quot;lawrence&quot;],&quot;archived_at&quot;:&quot;2021-08-17T14:28:57.801578Z&quot;,&quot;attribute_values&quot;:{&quot;abc123&quot;:{&quot;array_value&quot;:[{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;}],&quot;value&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;}}},&quot;catalog_type_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;created_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;external_id&quot;:&quot;761722cd-d1d7-477b-ac7e-90f9e079dc33&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Primary On-call&quot;,&quot;rank&quot;:3,&quot;updated_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;}],
  catalog_type: null,
  pagination_meta: null
)
```

