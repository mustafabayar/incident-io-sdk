# IncidentIoSdk::PaginationMetaResultV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after** | **String** | If provided, pass this as the &#39;after&#39; param to load the next page | [optional] |
| **page_size** | **Integer** | What was the maximum number of results requested | [default to 25] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::PaginationMetaResultV1.new(
  after: 01FCNDV6P870EA6S7TK1DSYDG0,
  page_size: 25
)
```

