# IncidentIoSdk::CustomFieldOptionsUpdatePayloadV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sort_key** | **Integer** | Sort key used to order the custom field options correctly | [default to 1000] |
| **value** | **String** | Human readable name for the custom field option |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CustomFieldOptionsUpdatePayloadV1.new(
  sort_key: 10,
  value: Product
)
```

