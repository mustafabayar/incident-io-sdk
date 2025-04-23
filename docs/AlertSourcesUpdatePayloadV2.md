# IncidentIoSdk::AlertSourcesUpdatePayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **jira_options** | [**AlertSourceJiraOptionsV2**](AlertSourceJiraOptionsV2.md) |  | [optional] |
| **name** | **String** | Unique name of the alert source |  |
| **template** | [**AlertTemplatePayloadV2**](AlertTemplatePayloadV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertSourcesUpdatePayloadV2.new(
  jira_options: null,
  name: Production Web Dashboard Alerts,
  template: null
)
```

