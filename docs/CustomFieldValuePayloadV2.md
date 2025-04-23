# IncidentIoSdk::CustomFieldValuePayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the custom field value | [optional] |
| **value_catalog_entry_id** | **String** | ID of the catalog entry. You can also use an ExternalID or an Alias of the catalog entry. | [optional] |
| **value_link** | **String** | If the custom field type is &#39;link&#39;, this will contain the value assigned. | [optional] |
| **value_numeric** | **String** | If the custom field type is &#39;numeric&#39;, this will contain the value assigned. | [optional] |
| **value_option_id** | **String** | ID of the custom field option | [optional] |
| **value_text** | **String** | If the custom field type is &#39;text&#39;, this will contain the value assigned. | [optional] |
| **value_timestamp** | **String** | Deprecated: please use incident timestamp values instead | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CustomFieldValuePayloadV2.new(
  id: 01FCNDV6P870EA6S7TK1DSYDG0,
  value_catalog_entry_id: 01FCNDV6P870EA6S7TK1DSYDG0,
  value_link: https://google.com/,
  value_numeric: 123.456,
  value_option_id: 01FCNDV6P870EA6S7TK1DSYDG0,
  value_text: This is my text field, I hope you like it,
  value_timestamp: 
)
```

