# IncidentIoSdk::IncidentV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **call_url** | **String** | The call URL attached to this incident | [optional] |
| **created_at** | **Time** | When the incident was created |  |
| **creator** | [**ActorV2**](ActorV2.md) |  |  |
| **custom_field_entries** | [**Array&lt;CustomFieldEntryV2&gt;**](CustomFieldEntryV2.md) | Custom field entries for this incident |  |
| **duration_metrics** | [**Array&lt;IncidentDurationMetricWithValueV2&gt;**](IncidentDurationMetricWithValueV2.md) | Incident duration metrics and their measurements for this incident | [optional] |
| **external_issue_reference** | [**ExternalIssueReferenceV2**](ExternalIssueReferenceV2.md) |  | [optional] |
| **has_debrief** | **Boolean** | If this incident has a debrief attached | [optional] |
| **id** | **String** | Unique identifier for the incident |  |
| **incident_role_assignments** | [**Array&lt;IncidentRoleAssignmentV2&gt;**](IncidentRoleAssignmentV2.md) | A list of who is assigned to each role for this incident |  |
| **incident_status** | [**IncidentStatusV2**](IncidentStatusV2.md) |  |  |
| **incident_timestamp_values** | [**Array&lt;IncidentTimestampWithValueV2&gt;**](IncidentTimestampWithValueV2.md) | Incident lifecycle events and when they occurred | [optional] |
| **incident_type** | [**IncidentTypeV2**](IncidentTypeV2.md) |  | [optional] |
| **mode** | **String** | Whether the incident is real, a test, a tutorial, or importing as a retrospective incident |  |
| **name** | **String** | Explanation of the incident |  |
| **permalink** | **String** | A permanent link to the homepage for this incident | [optional] |
| **postmortem_document_url** | **String** | Description of the incident | [optional] |
| **reference** | **String** | Reference to this incident, as displayed across the product |  |
| **severity** | [**SeverityV2**](SeverityV2.md) |  | [optional] |
| **slack_channel_id** | **String** | ID of the Slack channel in the organisation Slack workspace. Note that the channel is sometimes created asynchronously, so may not be present when the incident is just created. |  |
| **slack_channel_name** | **String** | Name of the slack channel | [optional] |
| **slack_team_id** | **String** | ID of the Slack team / workspace. This is only required if you are using a Slack Enterprise Grid with multiple teams. |  |
| **summary** | **String** | Detailed description of the incident | [optional] |
| **updated_at** | **Time** | When the incident was last updated |  |
| **visibility** | **String** | Whether the incident should be open to anyone in your Slack workspace (public), or invite-only (private). For more information on Private Incidents see our [help centre](https://help.incident.io/articles/5905558102-can-we-mark-incidents-as-sensitive-and-restrict-access). |  |
| **workload_minutes_late** | **Float** | Amount of time spent on the incident in late hours | [optional] |
| **workload_minutes_sleeping** | **Float** | Amount of time spent on the incident in sleeping hours | [optional] |
| **workload_minutes_total** | **Float** | Amount of time spent on the incident in total | [optional] |
| **workload_minutes_working** | **Float** | Amount of time spent on the incident in working hours | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IncidentV2.new(
  call_url: https://zoom.us/foo,
  created_at: 2021-08-17T13:28:57.801578Z,
  creator: null,
  custom_field_entries: [{&quot;custom_field&quot;:{&quot;description&quot;:&quot;Which team is impacted by this issue&quot;,&quot;field_type&quot;:&quot;single_select&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Affected Team&quot;,&quot;options&quot;:[{&quot;custom_field_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;sort_key&quot;:10,&quot;value&quot;:&quot;Product&quot;}]},&quot;values&quot;:[{&quot;value_catalog_entry&quot;:{&quot;aliases&quot;:[&quot;lawrence@incident.io&quot;,&quot;lawrence&quot;],&quot;external_id&quot;:&quot;761722cd-d1d7-477b-ac7e-90f9e079dc33&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Primary On-call&quot;},&quot;value_link&quot;:&quot;https://google.com/&quot;,&quot;value_numeric&quot;:&quot;123.456&quot;,&quot;value_option&quot;:{&quot;custom_field_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;sort_key&quot;:10,&quot;value&quot;:&quot;Product&quot;},&quot;value_text&quot;:&quot;This is my text field, I hope you like it&quot;}]}],
  duration_metrics: [{&quot;duration_metric&quot;:{&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYD5H&quot;,&quot;name&quot;:&quot;Lasted&quot;},&quot;value_seconds&quot;:10800}],
  external_issue_reference: null,
  has_debrief: false,
  id: 01FDAG4SAP5TYPT98WGR2N7W91,
  incident_role_assignments: [{&quot;assignee&quot;:{&quot;email&quot;:&quot;lisa@incident.io&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Lisa Karlin Curtis&quot;,&quot;role&quot;:&quot;viewer&quot;,&quot;slack_user_id&quot;:&quot;U02AYNF2XJM&quot;},&quot;role&quot;:{&quot;created_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;description&quot;:&quot;The person currently coordinating the incident&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;instructions&quot;:&quot;Take point on the incident; Make sure people are clear on responsibilities&quot;,&quot;name&quot;:&quot;Incident Lead&quot;,&quot;required&quot;:false,&quot;role_type&quot;:&quot;lead&quot;,&quot;shortform&quot;:&quot;lead&quot;,&quot;updated_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;}}],
  incident_status: null,
  incident_timestamp_values: [{&quot;incident_timestamp&quot;:{&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYD5H&quot;,&quot;name&quot;:&quot;Impact started&quot;,&quot;rank&quot;:1},&quot;value&quot;:{&quot;value&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;}}],
  incident_type: null,
  mode: standard,
  name: Our database is sad,
  permalink: https://app.incident.io/incidents/123,
  postmortem_document_url: https://docs.google.com/my_doc_id,
  reference: INC-123,
  severity: null,
  slack_channel_id: C02AW36C1M5,
  slack_channel_name: inc-165-green-parrot,
  slack_team_id: T02A1FSLE8J,
  summary: Our database is really really sad, and we don&#39;t know why yet.,
  updated_at: 2021-08-17T13:28:57.801578Z,
  visibility: public,
  workload_minutes_late: 40.7,
  workload_minutes_sleeping: 0,
  workload_minutes_total: 60.7,
  workload_minutes_working: 20
)
```

