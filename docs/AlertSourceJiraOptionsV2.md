# IncidentIoSdk::AlertSourceJiraOptionsV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_ids** | **Array&lt;String&gt;** | Which projects in Jira should this alert source watch for new issues? IDs can either be IDs of the projects in Jira, or ID of catalog entries in the &#39;Jira Project&#39; catalog type. |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertSourceJiraOptionsV2.new(
  project_ids: [&quot;01GBSQF3FHF7FWZQNWGHAVQ804&quot;,&quot;10043&quot;]
)
```

