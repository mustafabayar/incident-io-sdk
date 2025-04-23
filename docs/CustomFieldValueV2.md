# IncidentIoSdk::CustomFieldValueV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value_catalog_entry** | [**EmbeddedCatalogEntryV2**](EmbeddedCatalogEntryV2.md) |  | [optional] |
| **value_link** | **String** | If the custom field type is &#39;link&#39;, this will contain the value assigned. | [optional] |
| **value_numeric** | **String** | If the custom field type is &#39;numeric&#39;, this will contain the value assigned. | [optional] |
| **value_option** | [**CustomFieldOptionV2**](CustomFieldOptionV2.md) |  | [optional] |
| **value_text** | **String** | If the custom field type is &#39;text&#39;, this will contain the value assigned. | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CustomFieldValueV2.new(
  value_catalog_entry: null,
  value_link: https://google.com/,
  value_numeric: 123.456,
  value_option: null,
  value_text: This is my text field, I hope you like it
)
```

