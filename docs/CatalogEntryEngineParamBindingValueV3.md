# IncidentIoSdk::CatalogEntryEngineParamBindingValueV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | A label for this attribute value. If the attribute refers to another Catalog entry, this will be the name of that entry. |  |
| **literal** | **String** | The underlying value of the attribute, serialized as a string.  For String, Text, Number, and Bool typed attributes, this will be empty. For attributes that refer to another catalog entry, this can be the ID, external ID, or one of the aliases of that catalog entry. | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CatalogEntryEngineParamBindingValueV3.new(
  label: Lawrence Jones,
  literal: SEV123
)
```

