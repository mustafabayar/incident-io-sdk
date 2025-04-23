# IncidentIoSdk::CustomFieldOptionV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_field_id** | **String** | ID of the custom field this option belongs to |  |
| **id** | **String** | Unique identifier for the custom field option |  |
| **sort_key** | **Integer** | Sort key used to order the custom field options correctly | [default to 1000] |
| **value** | **String** | Human readable name for the custom field option |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CustomFieldOptionV2.new(
  custom_field_id: 01FCNDV6P870EA6S7TK1DSYDG0,
  id: 01FCNDV6P870EA6S7TK1DSYDG0,
  sort_key: 10,
  value: Product
)
```

