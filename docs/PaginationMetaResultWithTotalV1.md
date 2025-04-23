# IncidentIoSdk::PaginationMetaResultWithTotalV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after** | **String** | If provided, pass this as the &#39;after&#39; param to load the next page | [optional] |
| **page_size** | **Integer** | What was the maximum number of results requested | [default to 25] |
| **total_record_count** | **Integer** | How many matching records were there in total, if known | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::PaginationMetaResultWithTotalV1.new(
  after: 01FCNDV6P870EA6S7TK1DSYDG0,
  page_size: 25,
  total_record_count: 238
)
```

