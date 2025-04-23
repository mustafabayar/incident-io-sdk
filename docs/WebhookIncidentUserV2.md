# IncidentIoSdk::WebhookIncidentUserV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actor_user_id** | **String** | The ID of the user who performed this action. If the action was not taken by a user, for example it was taken by a Workflow, this will be empty. | [optional] |
| **incident_id** | **String** | The ID of the incident |  |
| **user_id** | **String** | The ID of the user |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::WebhookIncidentUserV2.new(
  actor_user_id: abc123,
  incident_id: abc123,
  user_id: abc123
)
```

