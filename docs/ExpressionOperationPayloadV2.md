# IncidentIoSdk::ExpressionOperationPayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **branches** | [**ExpressionBranchesOptsPayloadV2**](ExpressionBranchesOptsPayloadV2.md) |  | [optional] |
| **filter** | [**ExpressionFilterOptsPayloadV2**](ExpressionFilterOptsPayloadV2.md) |  | [optional] |
| **navigate** | [**ExpressionNavigateOptsPayloadV2**](ExpressionNavigateOptsPayloadV2.md) |  | [optional] |
| **operation_type** | **String** | The type of the operation |  |
| **parse** | [**ExpressionParseOptsPayloadV2**](ExpressionParseOptsPayloadV2.md) |  | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ExpressionOperationPayloadV2.new(
  branches: null,
  filter: null,
  navigate: null,
  operation_type: navigate,
  parse: null
)
```

