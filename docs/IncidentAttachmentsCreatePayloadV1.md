# IncidentIoSdk::IncidentAttachmentsCreatePayloadV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_id** | **String** | ID of the incident to add an attachment to |  |
| **resource** | [**IncidentAttachmentsCreatePayloadV1Resource**](IncidentAttachmentsCreatePayloadV1Resource.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IncidentAttachmentsCreatePayloadV1.new(
  incident_id: 01FDAG4SAP5TYPT98WGR2N7W91,
  resource: null
)
```

