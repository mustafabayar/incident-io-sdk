# IncidentIoSdk::IncidentsCreatePayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_field_entries** | [**Array&lt;CustomFieldEntryPayloadV2&gt;**](CustomFieldEntryPayloadV2.md) | Set the incident&#39;s custom fields to these values | [optional] |
| **idempotency_key** | **String** | Unique string used to de-duplicate incident create requests |  |
| **incident_role_assignments** | [**Array&lt;IncidentRoleAssignmentPayloadV2&gt;**](IncidentRoleAssignmentPayloadV2.md) | Assign incident roles to these people | [optional] |
| **incident_status_id** | **String** | Incident status to assign to the incident | [optional] |
| **incident_timestamp_values** | [**Array&lt;IncidentTimestampValuePayloadV2&gt;**](IncidentTimestampValuePayloadV2.md) | Assign the incident&#39;s timestamps to these values | [optional] |
| **incident_type_id** | **String** | Incident type to create this incident as | [optional] |
| **mode** | **String** | Whether the incident is real, a test, a tutorial, or importing as a retrospective incident | [optional] |
| **name** | **String** | Explanation of the incident | [optional] |
| **retrospective_incident_options** | [**RetrospectiveIncidentOptionsV2**](RetrospectiveIncidentOptionsV2.md) |  | [optional] |
| **severity_id** | **String** | Severity to create incident as | [optional] |
| **slack_channel_name_override** | **String** | Name of the Slack channel to create for this incident | [optional] |
| **slack_team_id** | **String** | Slack Team to create the incident in | [optional] |
| **summary** | **String** | Detailed description of the incident | [optional] |
| **visibility** | **String** | Whether the incident should be open to anyone in your Slack workspace (public), or invite-only (private). For more information on Private Incidents see our [help centre](https://help.incident.io/articles/5905558102-can-we-mark-incidents-as-sensitive-and-restrict-access). |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IncidentsCreatePayloadV2.new(
  custom_field_entries: [{&quot;custom_field_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;values&quot;:[{&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;value_catalog_entry_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;value_link&quot;:&quot;https://google.com/&quot;,&quot;value_numeric&quot;:&quot;123.456&quot;,&quot;value_option_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;value_text&quot;:&quot;This is my text field, I hope you like it&quot;,&quot;value_timestamp&quot;:&quot;&quot;}]}],
  idempotency_key: alert-uuid,
  incident_role_assignments: [{&quot;assignee&quot;:{&quot;email&quot;:&quot;bob@example.com&quot;,&quot;id&quot;:&quot;01G0J1EXE7AXZ2C93K61WBPYEH&quot;,&quot;slack_user_id&quot;:&quot;USER123&quot;},&quot;incident_role_id&quot;:&quot;01FH5TZRWMNAFB0DZ23FD1TV96&quot;}],
  incident_status_id: 01G0J1EXE7AXZ2C93K61WBPYEH,
  incident_timestamp_values: [{&quot;incident_timestamp_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYD5H&quot;,&quot;value&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;}],
  incident_type_id: 01FH5TZRWMNAFB0DZ23FD1TV96,
  mode: standard,
  name: Our database is sad,
  retrospective_incident_options: null,
  severity_id: 01FH5TZRWMNAFB0DZ23FD1TV96,
  slack_channel_name_override: inc-123-database-down,
  slack_team_id: T02A1FSLE8J,
  summary: Our database is really really sad, and we don&#39;t know why yet.,
  visibility: public
)
```

