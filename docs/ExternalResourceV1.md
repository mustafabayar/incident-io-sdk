# IncidentIoSdk::ExternalResourceV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** | ID of the resource in the external system |  |
| **permalink** | **String** | URL of the resource |  |
| **resource_type** | **String** | E.g. PagerDuty: the external system that holds the resource |  |
| **title** | **String** | Title of resource |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ExternalResourceV1.new(
  external_id: 123,
  permalink: https://my.pagerduty.com/incidents/ABC,
  resource_type: pager_duty_incident,
  title: The database has gone down
)
```

