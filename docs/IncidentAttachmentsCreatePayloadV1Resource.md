# IncidentIoSdk::IncidentAttachmentsCreatePayloadV1Resource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** | ID of the resource in the external system |  |
| **resource_type** | **String** | E.g. PagerDuty: the external system that holds the resource |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IncidentAttachmentsCreatePayloadV1Resource.new(
  external_id: 123,
  resource_type: pager_duty_incident
)
```

