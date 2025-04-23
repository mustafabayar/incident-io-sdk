# IncidentIoSdk::CatalogEntryEngineParamBindingV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **array_value** | [**Array&lt;CatalogEntryEngineParamBindingValueV3&gt;**](CatalogEntryEngineParamBindingValueV3.md) | If the attribute is multi-valued, the value will be returned here. | [optional] |
| **value** | [**CatalogEntryEngineParamBindingValueV3**](CatalogEntryEngineParamBindingValueV3.md) |  | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CatalogEntryEngineParamBindingV3.new(
  array_value: [{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;}],
  value: null
)
```

