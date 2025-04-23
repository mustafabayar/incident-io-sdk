# IncidentIoSdk::AlertAttributeValueV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_entry** | [**AlertAttributeCatalogEntryV2**](AlertAttributeCatalogEntryV2.md) |  | [optional] |
| **label** | **String** | The human readable label of this value for convenience. Will match the literal if this is a primitive type, or be the name of the catalog entry if this is a catalog entry | [optional] |
| **literal** | **String** | If set, this is the literal value of the step parameter | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertAttributeValueV2.new(
  catalog_entry: null,
  label: Payments Team,
  literal: SEV123
)
```

