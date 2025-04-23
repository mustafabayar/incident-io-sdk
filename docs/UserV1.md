# IncidentIoSdk::UserV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address of the user. | [optional] |
| **id** | **String** | Unique identifier of the user |  |
| **name** | **String** | Name of the user |  |
| **role** | **String** | DEPRECATED: Role of the user as of March 9th 2023, this value is no longer updated. |  |
| **slack_user_id** | **String** | Slack ID of the user | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::UserV1.new(
  email: lisa@incident.io,
  id: 01FCNDV6P870EA6S7TK1DSYDG0,
  name: Lisa Karlin Curtis,
  role: viewer,
  slack_user_id: U02AYNF2XJM
)
```

