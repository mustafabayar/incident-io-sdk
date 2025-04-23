# IncidentIoSdk::IncidentRolesCreatePayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Describes the purpose of the role |  |
| **instructions** | **String** | Provided to whoever is nominated for the role. Note that this will be empty for the &#39;reporter&#39; role. |  |
| **name** | **String** | Human readable name of the incident role |  |
| **shortform** | **String** | Short human readable name for Slack. Note that this will be empty for the &#39;reporter&#39; role. |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IncidentRolesCreatePayloadV2.new(
  description: The person currently coordinating the incident,
  instructions: Take point on the incident; Make sure people are clear on responsibilities,
  name: Incident Lead,
  shortform: lead
)
```

