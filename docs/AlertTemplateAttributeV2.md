# IncidentIoSdk::AlertTemplateAttributeV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alert_attribute_id** | **String** | ID of the alert attribute to set with this binding |  |
| **binding** | [**EngineParamBindingV2**](EngineParamBindingV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertTemplateAttributeV2.new(
  alert_attribute_id: abc123,
  binding: null
)
```

