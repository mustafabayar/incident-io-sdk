# IncidentIoSdk::CatalogEntryReferenceV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **archived_at** | **Time** | When this entry was archived | [optional] |
| **catalog_entry_id** | **String** | ID of this catalog entry |  |
| **catalog_entry_name** | **String** | The name of this entry |  |
| **catalog_type_id** | **String** | ID of this catalog type |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CatalogEntryReferenceV2.new(
  archived_at: 2021-08-17T14:28:57.801578Z,
  catalog_entry_id: 01FCNDV6P870EA6S7TK1DSYDG0,
  catalog_entry_name: Primary escalation,
  catalog_type_id: 01FCNDV6P870EA6S7TK1DSYDG0
)
```

