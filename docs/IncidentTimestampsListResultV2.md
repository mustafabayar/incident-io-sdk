# IncidentIoSdk::IncidentTimestampsListResultV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_timestamps** | [**Array&lt;IncidentTimestampV2&gt;**](IncidentTimestampV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IncidentTimestampsListResultV2.new(
  incident_timestamps: [{&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYD5H&quot;,&quot;name&quot;:&quot;Impact started&quot;,&quot;rank&quot;:1}]
)
```

