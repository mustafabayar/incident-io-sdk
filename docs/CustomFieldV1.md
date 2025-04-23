# IncidentIoSdk::CustomFieldV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_type_id** | **String** | For catalog fields, the ID of the associated catalog type | [optional] |
| **created_at** | **Time** | When the action was created |  |
| **description** | **String** | Description of the custom field |  |
| **field_type** | **String** | Type of custom field |  |
| **id** | **String** | Unique identifier for the custom field |  |
| **name** | **String** | Human readable name for the custom field |  |
| **options** | [**Array&lt;CustomFieldOptionV1&gt;**](CustomFieldOptionV1.md) | What options are available for this custom field, if this field has options |  |
| **required** | **String** | When this custom field must be set during the incident lifecycle. [DEPRECATED: please use required_v2 instead]. | [optional] |
| **required_v2** | **String** | When this custom field must be set during the incident lifecycle. | [optional] |
| **show_before_closure** | **Boolean** | Whether a custom field should be shown in the incident resolve modal. If this custom field is required before resolution, but no value has been set for it, the field will be shown in the resolve modal whatever the value of this setting. |  |
| **show_before_creation** | **Boolean** | Whether a custom field should be shown in the incident creation modal. This must be true if the field is always required. |  |
| **show_before_update** | **Boolean** | Whether a custom field should be shown in the incident update modal. |  |
| **show_in_announcement_post** | **Boolean** | Whether a custom field should be shown in the list of fields as part of the announcement post when set. | [optional] |
| **updated_at** | **Time** | When the action was last updated |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CustomFieldV1.new(
  catalog_type_id: 01FCNDV6P870EA6S7TK1DSYDG0,
  created_at: 2021-08-17T13:28:57.801578Z,
  description: Which team is impacted by this issue,
  field_type: single_select,
  id: 01FCNDV6P870EA6S7TK1DSYDG0,
  name: Affected Team,
  options: [{&quot;custom_field_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;sort_key&quot;:10,&quot;value&quot;:&quot;Product&quot;}],
  required: never,
  required_v2: never,
  show_before_closure: true,
  show_before_creation: true,
  show_before_update: true,
  show_in_announcement_post: true,
  updated_at: 2021-08-17T13:28:57.801578Z
)
```

