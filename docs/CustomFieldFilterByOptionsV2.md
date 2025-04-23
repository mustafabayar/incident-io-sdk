# IncidentIoSdk::CustomFieldFilterByOptionsV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_attribute_id** | **String** | This must be an attribute of the catalog type of this custom field. It must be an attribute that points to another catalog type (so not a plain string, number, or boolean attribute). |  |
| **custom_field_id** | **String** | This must be the ID of a custom field, which must have values of the same type as the attribute you are filtering by.  When this filtering field is set on an incident, the options for this custom field will be filtered to only those with the attribute value that matches the value of the filtering field. |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CustomFieldFilterByOptionsV2.new(
  catalog_attribute_id: 01H2FW182TAH0NHEVBY34SCAK0,
  custom_field_id: 01H2FW182TAH0NHEVBY34SCAK0
)
```

