# IncidentIoSdk::ExpressionParseOptsPayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **returns** | [**ReturnsMetaV2**](ReturnsMetaV2.md) |  |  |
| **source** | **String** | Source expression that is evaluated to a result |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ExpressionParseOptsPayloadV2.new(
  returns: null,
  source: metadata.annotations[&quot;github.com/repo&quot;]
)
```

