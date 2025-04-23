# IncidentIoSdk::AlertSourceV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_options** | [**AlertSourceEmailOptionsV2**](AlertSourceEmailOptionsV2.md) |  | [optional] |
| **id** | **String** | The ID of this alert source |  |
| **jira_options** | [**AlertSourceJiraOptionsV2**](AlertSourceJiraOptionsV2.md) |  | [optional] |
| **name** | **String** | Unique name of the alert source |  |
| **secret_token** | **String** | Secret token used to authenticate this source, if applicable. If applicable, this is the token that must be included in either the query string or the &#39;Authorization&#39; header when sending events to this alert source. | [optional] |
| **source_type** | **String** | Type of alert source |  |
| **template** | [**AlertTemplateV2**](AlertTemplateV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertSourceV2.new(
  email_options: null,
  id: 01GW2G3V0S59R238FAHPDS1R66,
  jira_options: null,
  name: Production Web Dashboard Alerts,
  secret_token: some-secret-token,
  source_type: alertmanager,
  template: null
)
```

