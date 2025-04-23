# IncidentIoSdk::CustomFieldV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_type_id** | **String** | For catalog fields, the ID of the associated catalog type | [optional] |
| **created_at** | **Time** | When the action was created |  |
| **description** | **String** | Description of the custom field |  |
| **field_type** | **String** | Type of custom field |  |
| **filter_by** | [**CustomFieldFilterByOptionsV2**](CustomFieldFilterByOptionsV2.md) |  | [optional] |
| **group_by_catalog_attribute_id** | **String** | For catalog fields, the ID of the attribute used to group catalog entries (if applicable) | [optional] |
| **helptext_catalog_attribute_id** | **String** | Which catalog attribute provides helptext for the options | [optional] |
| **id** | **String** | Unique identifier for the custom field |  |
| **name** | **String** | Human readable name for the custom field |  |
| **updated_at** | **Time** | When the action was last updated |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CustomFieldV2.new(
  catalog_type_id: 01FCNDV6P870EA6S7TK1DSYDG0,
  created_at: 2021-08-17T13:28:57.801578Z,
  description: Which team is impacted by this issue,
  field_type: single_select,
  filter_by: null,
  group_by_catalog_attribute_id: 01FCNDV6P870EA6S7TK1DSYDG0,
  helptext_catalog_attribute_id: 01H2FW182TAH0NHEVBY34SCAK0,
  id: 01FCNDV6P870EA6S7TK1DSYDG0,
  name: Affected Team,
  updated_at: 2021-08-17T13:28:57.801578Z
)
```

