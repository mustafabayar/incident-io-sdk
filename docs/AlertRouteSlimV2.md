# IncidentIoSdk::AlertRouteSlimV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether this alert route is enabled or not |  |
| **id** | **String** | Unique identifier for this alert route config |  |
| **name** | **String** | The name of this alert route config, for the user&#39;s reference |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertRouteSlimV2.new(
  enabled: false,
  id: 01FCNDV6P870EA6S7TK1DSYDG0,
  name: Production incidents
)
```

