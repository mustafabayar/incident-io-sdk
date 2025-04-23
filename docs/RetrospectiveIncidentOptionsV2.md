# IncidentIoSdk::RetrospectiveIncidentOptionsV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **Integer** | The external ID (e.g. the 123 in INC-123) to assign to the incident. This can be useful when importing incidents. If you want to use this field, you&#39;ll need to talk to us first. | [optional] |
| **postmortem_document_url** | **String** | The URL of the postmortem, if there is one | [optional] |
| **slack_channel_id** | **String** | Pass the ID of a Slack channel to attach the incident to an existing channel, rather than creating a new one | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::RetrospectiveIncidentOptionsV2.new(
  external_id: 123,
  postmortem_document_url: https://docs.google.com/my_doc_id,
  slack_channel_id: abc123
)
```

