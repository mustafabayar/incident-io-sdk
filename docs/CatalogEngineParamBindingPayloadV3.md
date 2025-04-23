# IncidentIoSdk::CatalogEngineParamBindingPayloadV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **array_value** | [**Array&lt;CatalogEngineParamBindingValuePayloadV3&gt;**](CatalogEngineParamBindingValuePayloadV3.md) | If set, this is the array value of the step parameter | [optional] |
| **value** | [**CatalogEngineParamBindingValuePayloadV3**](CatalogEngineParamBindingValuePayloadV3.md) |  | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CatalogEngineParamBindingPayloadV3.new(
  array_value: [{&quot;literal&quot;:&quot;SEV123&quot;}],
  value: null
)
```

