# IncidentIoSdk::CustomFieldsCreatePayloadV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the custom field |  |
| **field_type** | **String** | Type of custom field |  |
| **name** | **String** | Human readable name for the custom field |  |
| **required** | **String** | When this custom field must be set during the incident lifecycle. [DEPRECATED: please use required_v2 instead]. | [optional] |
| **required_v2** | **String** | When this custom field must be set during the incident lifecycle. | [optional] |
| **show_before_closure** | **Boolean** | Whether a custom field should be shown in the incident resolve modal. If this custom field is required before resolution, but no value has been set for it, the field will be shown in the resolve modal whatever the value of this setting. |  |
| **show_before_creation** | **Boolean** | Whether a custom field should be shown in the incident creation modal. This must be true if the field is always required. |  |
| **show_before_update** | **Boolean** | Whether a custom field should be shown in the incident update modal. |  |
| **show_in_announcement_post** | **Boolean** | Whether a custom field should be shown in the list of fields as part of the announcement post when set. | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CustomFieldsCreatePayloadV1.new(
  description: Which team is impacted by this issue,
  field_type: single_select,
  name: Affected Team,
  required: never,
  required_v2: never,
  show_before_closure: true,
  show_before_creation: true,
  show_before_update: true,
  show_in_announcement_post: true
)
```

