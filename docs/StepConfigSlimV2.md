# IncidentIoSdk::StepConfigSlimV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | Human readable identifier for this step |  |
| **name** | **String** | Unique name of the step in the engine |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::StepConfigSlimV2.new(
  label: PagerDuty Escalate,
  name: pagerduty.escalate
)
```

