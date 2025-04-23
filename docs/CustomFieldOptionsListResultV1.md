# IncidentIoSdk::CustomFieldOptionsListResultV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_field_options** | [**Array&lt;CustomFieldOptionV1&gt;**](CustomFieldOptionV1.md) |  |  |
| **pagination_meta** | [**PaginationMetaResultV1**](PaginationMetaResultV1.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CustomFieldOptionsListResultV1.new(
  custom_field_options: [{&quot;custom_field_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;sort_key&quot;:10,&quot;value&quot;:&quot;Product&quot;}],
  pagination_meta: null
)
```

