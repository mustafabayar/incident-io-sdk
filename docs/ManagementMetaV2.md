# IncidentIoSdk::ManagementMetaV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **annotations** | **Hash&lt;String, String&gt;** | Annotations that track metadata about this resource |  |
| **managed_by** | **String** | How is this resource managed |  |
| **source_url** | **String** | The url of the external repository where this resource is managed (if there is one) | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ManagementMetaV2.new(
  annotations: {&quot;incident.io/terraform/version&quot;:&quot;3.0.0&quot;},
  managed_by: dashboard,
  source_url: https://github.com/my-company/infrastructure
)
```

