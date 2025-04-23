# IncidentIoSdk::IdentityV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dashboard_url** | **String** | The dashboard URL for this organisation |  |
| **name** | **String** | The name assigned to the current API Key |  |
| **roles** | **Array&lt;String&gt;** | Which roles have been enabled for this key |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IdentityV1.new(
  dashboard_url: https://app.incident.io/my-org,
  name: Alertmanager token,
  roles: [&quot;viewer&quot;]
)
```

