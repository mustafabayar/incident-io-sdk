# IncidentIoSdk::CustomFieldTypeInfoV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the custom field |  |
| **field_type** | **String** | Type of custom field |  |
| **id** | **String** | Unique identifier for the custom field |  |
| **name** | **String** | Human readable name for the custom field |  |
| **options** | [**Array&lt;CustomFieldOptionV1&gt;**](CustomFieldOptionV1.md) | What options are available for this custom field, if this field has options |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CustomFieldTypeInfoV1.new(
  description: Which team is impacted by this issue,
  field_type: single_select,
  id: 01FCNDV6P870EA6S7TK1DSYDG0,
  name: Affected Team,
  options: [{&quot;custom_field_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;sort_key&quot;:10,&quot;value&quot;:&quot;Product&quot;}]
)
```

