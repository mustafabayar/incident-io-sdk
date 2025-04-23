# IncidentIoSdk::ExpressionOperationV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **branches** | [**ExpressionBranchesOptsV2**](ExpressionBranchesOptsV2.md) |  | [optional] |
| **filter** | [**ExpressionFilterOptsV2**](ExpressionFilterOptsV2.md) |  | [optional] |
| **navigate** | [**ExpressionNavigateOptsV2**](ExpressionNavigateOptsV2.md) |  | [optional] |
| **operation_type** | **String** | The type of the operation |  |
| **parse** | [**ExpressionParseOptsV2**](ExpressionParseOptsV2.md) |  | [optional] |
| **returns** | [**ReturnsMetaV2**](ReturnsMetaV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ExpressionOperationV2.new(
  branches: null,
  filter: null,
  navigate: null,
  operation_type: navigate,
  parse: null,
  returns: null
)
```

