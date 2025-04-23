# IncidentIoSdk::ExternalIssueReferenceV6

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issue_name** | **String** | Human readable ID for the issue |  |
| **issue_permalink** | **String** | URL linking directly to the action in the issue tracker |  |
| **provider** | **String** | ID of the issue tracker provider |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ExternalIssueReferenceV6.new(
  issue_name: INC-123,
  issue_permalink: https://linear.app/incident-io/issue/INC-1609/find-copywriter-to-write-up,
  provider: asana
)
```

