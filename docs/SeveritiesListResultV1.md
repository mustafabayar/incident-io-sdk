# IncidentIoSdk::SeveritiesListResultV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **severities** | [**Array&lt;SeverityV1&gt;**](SeverityV1.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::SeveritiesListResultV1.new(
  severities: [{&quot;created_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;description&quot;:&quot;Issues with **low impact**.&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Minor&quot;,&quot;rank&quot;:1,&quot;updated_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;}]
)
```

