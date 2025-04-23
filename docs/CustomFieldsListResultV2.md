# IncidentIoSdk::CustomFieldsListResultV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_fields** | [**Array&lt;CustomFieldV2&gt;**](CustomFieldV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CustomFieldsListResultV2.new(
  custom_fields: [{&quot;catalog_type_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;created_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;description&quot;:&quot;Which team is impacted by this issue&quot;,&quot;field_type&quot;:&quot;single_select&quot;,&quot;filter_by&quot;:{&quot;catalog_attribute_id&quot;:&quot;01H2FW182TAH0NHEVBY34SCAK0&quot;,&quot;custom_field_id&quot;:&quot;01H2FW182TAH0NHEVBY34SCAK0&quot;},&quot;group_by_catalog_attribute_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;helptext_catalog_attribute_id&quot;:&quot;01H2FW182TAH0NHEVBY34SCAK0&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Affected Team&quot;,&quot;updated_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;}]
)
```

