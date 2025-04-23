# IncidentIoSdk::AlertSourcesCreatePayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **jira_options** | [**AlertSourceJiraOptionsV2**](AlertSourceJiraOptionsV2.md) |  | [optional] |
| **name** | **String** | Unique name of the alert source |  |
| **source_type** | **String** | Type of alert source |  |
| **template** | [**AlertTemplatePayloadV2**](AlertTemplatePayloadV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertSourcesCreatePayloadV2.new(
  jira_options: null,
  name: Production Web Dashboard Alerts,
  source_type: app_optics,
  template: null
)
```

