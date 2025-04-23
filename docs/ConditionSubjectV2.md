# IncidentIoSdk::ConditionSubjectV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | Human readable identifier for the subject |  |
| **reference** | **String** | Reference into the scope for the value of the subject |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ConditionSubjectV2.new(
  label: Incident Severity,
  reference: incident.severity
)
```

