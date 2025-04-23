# IncidentIoSdk::AlertRouteSeverityBindingV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **binding** | [**EngineParamBindingV2**](EngineParamBindingV2.md) |  | [optional] |
| **merge_strategy** | **String** | Strategy for merging severity when multiple alerts create/update the same incident |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertRouteSeverityBindingV2.new(
  binding: null,
  merge_strategy: append
)
```

