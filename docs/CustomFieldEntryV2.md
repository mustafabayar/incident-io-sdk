# IncidentIoSdk::CustomFieldEntryV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_field** | [**CustomFieldTypeInfoV2**](CustomFieldTypeInfoV2.md) |  |  |
| **values** | [**Array&lt;CustomFieldValueV2&gt;**](CustomFieldValueV2.md) | List of custom field values set on this entry |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CustomFieldEntryV2.new(
  custom_field: null,
  values: [{&quot;value_catalog_entry&quot;:{&quot;aliases&quot;:[&quot;lawrence@incident.io&quot;,&quot;lawrence&quot;],&quot;external_id&quot;:&quot;761722cd-d1d7-477b-ac7e-90f9e079dc33&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Primary On-call&quot;},&quot;value_link&quot;:&quot;https://google.com/&quot;,&quot;value_numeric&quot;:&quot;123.456&quot;,&quot;value_option&quot;:{&quot;custom_field_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;sort_key&quot;:10,&quot;value&quot;:&quot;Product&quot;},&quot;value_text&quot;:&quot;This is my text field, I hope you like it&quot;}]
)
```

