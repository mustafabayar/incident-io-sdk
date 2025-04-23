# IncidentIoSdk::AfterPaginationMetaResultV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after** | **String** | The time, if it exists, of the last entry&#39;s end time |  |
| **after_url** | **String** | The URL to fetch the next page of entries |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AfterPaginationMetaResultV2.new(
  after: abc123,
  after_url: abc123
)
```

