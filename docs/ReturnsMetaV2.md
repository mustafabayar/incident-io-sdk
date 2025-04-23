# IncidentIoSdk::ReturnsMetaV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **array** | **Boolean** | Whether the return value should be single or multi-value |  |
| **type** | **String** | Expected return type of this expression (what to try casting the result to) |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ReturnsMetaV2.new(
  array: true,
  type: IncidentStatus
)
```

