# IncidentIoSdk::UserReferencePayloadV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The user&#39;s email address, matching the email on their Slack account | [optional] |
| **id** | **String** | The incident.io ID of a user | [optional] |
| **slack_user_id** | **String** | The ID of the user&#39;s Slack account. | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::UserReferencePayloadV1.new(
  email: bob@example.com,
  id: 01G0J1EXE7AXZ2C93K61WBPYEH,
  slack_user_id: USER123
)
```

