# IncidentIoSdk::AlertEventsCreateHTTPPayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deduplication_key** | **String** | A deduplication key which uniquely references this alert from your alert source. If you send an event with the same deduplication_key multiple times, only one alert will be created in incident.io for this alert source config. You can filter on this field to find the alert created by an event you&#39;ve sent us. | [optional] |
| **description** | **String** | Description that optionally adds more detail to title. Supports markdown. | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Any additional metadata that you&#39;ve configured your alert source to parse | [optional] |
| **source_url** | **String** | If applicable, a link to the alert in the upstream system | [optional] |
| **status** | **String** | Current status of this alert |  |
| **title** | **String** | The title of the alert, parsed from the alert payload according to the alert source configuration |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertEventsCreateHTTPPayloadV2.new(
  deduplication_key: 4293868629,
  description: We&#39;ve detected a number of timeouts on hello.world.com, the service may be down. To fix...,
  metadata: {&quot;service&quot;:&quot;hello.world.com&quot;,&quot;team&quot;:[&quot;my-team&quot;]},
  source_url: https://www.my-alerting-platform.com/alerts/my-alert-123,
  status: firing,
  title: *errors.withMessage: PG::Error failed to connect
)
```

