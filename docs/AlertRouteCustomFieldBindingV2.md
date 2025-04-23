# IncidentIoSdk::AlertRouteCustomFieldBindingV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **binding** | [**EngineParamBindingV2**](EngineParamBindingV2.md) |  |  |
| **custom_field_id** | **String** | ID of the custom field |  |
| **merge_strategy** | **String** | The strategy to use when multiple alerts match this route |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertRouteCustomFieldBindingV2.new(
  binding: null,
  custom_field_id: 01FCNDV6P870EA6S7TK1DSYDG0,
  merge_strategy: append
)
```

