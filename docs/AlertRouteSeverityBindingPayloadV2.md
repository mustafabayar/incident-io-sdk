# IncidentIoSdk::AlertRouteSeverityBindingPayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **binding** | [**EngineParamBindingPayloadV2**](EngineParamBindingPayloadV2.md) |  | [optional] |
| **merge_strategy** | **String** | Strategy for merging severity when multiple alerts create/update the same incident |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertRouteSeverityBindingPayloadV2.new(
  binding: null,
  merge_strategy: append
)
```

