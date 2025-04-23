# IncidentIoSdk::IncidentAttachmentV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of this incident membership |  |
| **incident_id** | **String** | Unique identifier of the incident |  |
| **resource** | [**ExternalResourceV1**](ExternalResourceV1.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IncidentAttachmentV1.new(
  id: 01FCNDV6P870EA6S7TK1DSYD5H,
  incident_id: 01FCNDV6P870EA6S7TK1DSYD5H,
  resource: null
)
```

