# IncidentIoSdk::IncidentStatusesUpdatePayloadV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Rich text description of the incident status |  |
| **name** | **String** | Unique name of this status |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IncidentStatusesUpdatePayloadV1.new(
  description: Impact has been **fully mitigated**, and we&#39;re ready to learn from this incident.,
  name: Closed
)
```

