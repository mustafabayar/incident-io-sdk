# IncidentIoSdk::EscalationPathNodeRepeatV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repeat_times** | **Integer** | How many times to repeat these nodes |  |
| **to_node** | **String** | Which node ID we begin repeating from. |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::EscalationPathNodeRepeatV2.new(
  repeat_times: 3,
  to_node: 01FCNDV6P870EA6S7TK1DSYDG0
)
```

