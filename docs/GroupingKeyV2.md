# IncidentIoSdk::GroupingKeyV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reference** | **String** | A reference to a property of the alert to group on |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::GroupingKeyV2.new(
  reference: alert.title
)
```

