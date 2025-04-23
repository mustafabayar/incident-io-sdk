# IncidentIoSdk::EscalationPathRoundRobinConfigV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether round robin is enabled for this level |  |
| **rotate_after_seconds** | **Integer** | How long should we wait before rotating to the next target in a round robin, if not set will stick with a single target per level. | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::EscalationPathRoundRobinConfigV2.new(
  enabled: false,
  rotate_after_seconds: 120
)
```

