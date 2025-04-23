# IncidentIoSdk::AlertRoutesListResultV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alert_routes** | [**Array&lt;AlertRouteSlimV2&gt;**](AlertRouteSlimV2.md) |  |  |
| **pagination_meta** | [**PaginationMetaResultV2**](PaginationMetaResultV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertRoutesListResultV2.new(
  alert_routes: [{&quot;enabled&quot;:false,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Production incidents&quot;}],
  pagination_meta: null
)
```

