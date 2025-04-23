# IncidentIoSdk::AlertAttributeCatalogEntryV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_type_id** | **String** | ID of this catalog type |  |
| **id** | **String** | ID of this catalog entry |  |
| **name** | **String** | Name is the human readable name of this entry |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertAttributeCatalogEntryV2.new(
  catalog_type_id: 01FCNDV6P870EA6S7TK1DSYDG0,
  id: 01FCNDV6P870EA6S7TK1DSYDG0,
  name: Primary On-call
)
```

