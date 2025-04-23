# IncidentIoSdk::EngineParamBindingV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **array_value** | [**Array&lt;EngineParamBindingValueV2&gt;**](EngineParamBindingValueV2.md) | If array_value is set, this helps render the values | [optional] |
| **value** | [**EngineParamBindingValueV2**](EngineParamBindingValueV2.md) |  | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::EngineParamBindingV2.new(
  array_value: [{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],
  value: null
)
```

