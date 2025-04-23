# IncidentIoSdk::IncidentSlimV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **Integer** | External identifier for the incident - often displayed with an INC- prefix |  |
| **id** | **String** | Unique identifier for the incident |  |
| **name** | **String** | Explanation of the incident |  |
| **reference** | **String** | Reference to this incident, as displayed across the product |  |
| **status_category** | **String** | The category of the incidents status |  |
| **summary** | **String** | Detailed description of the incident | [optional] |
| **visibility** | **String** | Whether the incident should be open to anyone in your Slack workspace (public), or invite-only (private). For more information on Private Incidents see our [help centre](https://help.incident.io/articles/5905558102-can-we-mark-incidents-as-sensitive-and-restrict-access). |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IncidentSlimV2.new(
  external_id: 123,
  id: 01FDAG4SAP5TYPT98WGR2N7W91,
  name: Our database is sad,
  reference: INC-123,
  status_category: triage,
  summary: Our database is really really sad, and we don&#39;t know why yet.,
  visibility: public
)
```

