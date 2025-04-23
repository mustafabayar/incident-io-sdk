# IncidentIoSdk::AlertAttributeV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **array** | **Boolean** | Whether this attribute is an array |  |
| **id** | **String** | The ID of this attribute |  |
| **name** | **String** | Unique name of this attribute |  |
| **type** | **String** | Engine resource name for this attribute |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertAttributeV2.new(
  array: false,
  id: 01GW2G3V0S59R238FAHPDS1R66,
  name: service,
  type: CatalogEntry[&quot;01GW2G3V0S59R238FAHPDS1R67&quot;]
)
```

