# IncidentIoSdk::ExpressionNavigateOptsV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reference** | **String** | The reference within the scope to navigate to |  |
| **reference_label** | **String** | The name of the reference to navigate to |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ExpressionNavigateOptsV2.new(
  reference: 1235,
  reference_label: Teams
)
```

