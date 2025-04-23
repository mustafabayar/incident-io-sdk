# IncidentIoSdk::AlertAttributesCreatePayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **array** | **Boolean** | Whether this attribute is an array |  |
| **name** | **String** | Unique name of this attribute |  |
| **type** | **String** | Engine resource name for this attribute |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertAttributesCreatePayloadV2.new(
  array: false,
  name: service,
  type: CatalogEntry[&quot;01GW2G3V0S59R238FAHPDS1R67&quot;]
)
```

