# IncidentIoSdk::AlertRouteChannelTargetPayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **binding** | [**EngineParamBindingPayloadV2**](EngineParamBindingPayloadV2.md) |  |  |
| **channel_visibility** | **String** | The visibility of the channel |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertRouteChannelTargetPayloadV2.new(
  binding: null,
  channel_visibility: abc123
)
```

