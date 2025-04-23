# IncidentIoSdk::IncidentStatusesCreatePayloadV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | **String** | Whether the status should be considered &#39;live&#39; (now renamed to active), &#39;learning&#39; (now renamed to post-incident) or &#39;closed&#39;. The triage and declined statuses cannot be created or modified. |  |
| **description** | **String** | Rich text description of the incident status |  |
| **name** | **String** | Unique name of this status |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IncidentStatusesCreatePayloadV1.new(
  category: live,
  description: Impact has been **fully mitigated**, and we&#39;re ready to learn from this incident.,
  name: Closed
)
```

