# IncidentIoSdk::WorkflowDelayV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conditions_apply_over_delay** | **Boolean** | If this workflow is delayed, whether the conditions should be rechecked between trigger firing and execution |  |
| **for_seconds** | **Integer** | Delay in seconds between trigger firing and running the workflow |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::WorkflowDelayV2.new(
  conditions_apply_over_delay: false,
  for_seconds: 60
)
```

