# IncidentIoSdk::CustomFieldsListResultV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_fields** | [**Array&lt;CustomFieldV1&gt;**](CustomFieldV1.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CustomFieldsListResultV1.new(
  custom_fields: [{&quot;catalog_type_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;created_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;description&quot;:&quot;Which team is impacted by this issue&quot;,&quot;field_type&quot;:&quot;single_select&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Affected Team&quot;,&quot;options&quot;:[{&quot;custom_field_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;sort_key&quot;:10,&quot;value&quot;:&quot;Product&quot;}],&quot;required&quot;:&quot;never&quot;,&quot;required_v2&quot;:&quot;never&quot;,&quot;show_before_closure&quot;:true,&quot;show_before_creation&quot;:true,&quot;show_before_update&quot;:true,&quot;show_in_announcement_post&quot;:true,&quot;updated_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;}]
)
```

