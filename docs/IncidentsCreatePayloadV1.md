# IncidentIoSdk::IncidentsCreatePayloadV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_field_entries** | [**Array&lt;CustomFieldEntryPayloadV1&gt;**](CustomFieldEntryPayloadV1.md) | Set the incident&#39;s custom fields to these values | [optional] |
| **idempotency_key** | **String** | Unique string used to de-duplicate incident create requests |  |
| **incident_role_assignments** | [**Array&lt;IncidentRoleAssignmentPayloadV1&gt;**](IncidentRoleAssignmentPayloadV1.md) | Assign incident roles to these people | [optional] |
| **incident_type_id** | **String** | Incident type to create this incident as | [optional] |
| **mode** | **String** | Whether the incident is real or test | [optional] |
| **name** | **String** | Explanation of the incident | [optional] |
| **severity_id** | **String** | Severity to create incident as | [optional] |
| **slack_team_id** | **String** | ID of the Slack team / workspace. This is only required if you are using a Slack Enterprise Grid with multiple teams. | [optional] |
| **source_message_channel_id** | **String** | Channel ID of the source message, if this incident was created from one | [optional] |
| **source_message_timestamp** | **String** | Timestamp of the source message, if this incident was created from one | [optional] |
| **status** | **String** | Current status of the incident | [optional] |
| **summary** | **String** | Detailed description of the incident | [optional] |
| **visibility** | **String** | Whether the incident should be open to anyone in your Slack workspace (public), or invite-only (private). For more information on Private Incidents see our [help centre](https://help.incident.io/articles/5905558102-can-we-mark-incidents-as-sensitive-and-restrict-access). |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IncidentsCreatePayloadV1.new(
  custom_field_entries: [{&quot;custom_field_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;values&quot;:[{&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;value_catalog_entry_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;value_link&quot;:&quot;https://google.com/&quot;,&quot;value_numeric&quot;:&quot;123.456&quot;,&quot;value_option_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;value_text&quot;:&quot;This is my text field, I hope you like it&quot;,&quot;value_timestamp&quot;:&quot;&quot;}]}],
  idempotency_key: alert-uuid,
  incident_role_assignments: [{&quot;assignee&quot;:{&quot;email&quot;:&quot;bob@example.com&quot;,&quot;id&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYEH&quot;,&quot;slack_user_id&quot;:&quot;USER123&quot;},&quot;incident_role_id&quot;:&quot;01FH5TZRWMNAFB0DZ23FD1TV96&quot;}],
  incident_type_id: 01FH5TZRWMNAFB0DZ23FD1TV96,
  mode: real,
  name: Our database is sad,
  severity_id: 01FH5TZRWMNAFB0DZ23FD1TV96,
  slack_team_id: T02A1FSLE8J,
  source_message_channel_id: C02AW36C1M5,
  source_message_timestamp: 1653650280.526509,
  status: triage,
  summary: Our database is really really sad, and we don&#39;t know why yet.,
  visibility: public
)
```

