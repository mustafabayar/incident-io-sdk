# IncidentIoSdk::CustomFieldEntryPayloadV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_field_id** | **String** | ID of the custom field this entry is linked against |  |
| **values** | [**Array&lt;CustomFieldValuePayloadV1&gt;**](CustomFieldValuePayloadV1.md) | List of values to associate with this entry. Use an empty array to unset the value of the custom field. |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CustomFieldEntryPayloadV1.new(
  custom_field_id: 01FCNDV6P870EA6S7TK1DSYDG0,
  values: [{&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;value_catalog_entry_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;value_link&quot;:&quot;https://google.com/&quot;,&quot;value_numeric&quot;:&quot;123.456&quot;,&quot;value_option_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;value_text&quot;:&quot;This is my text field, I hope you like it&quot;,&quot;value_timestamp&quot;:&quot;&quot;}]
)
```

