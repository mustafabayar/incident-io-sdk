# IncidentIoSdk::AlertAttributesListResultV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alert_attributes** | [**Array&lt;AlertAttributeV2&gt;**](AlertAttributeV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertAttributesListResultV2.new(
  alert_attributes: [{&quot;array&quot;:false,&quot;id&quot;:&quot;01GW2G3V0S59R238FAHPDS1R66&quot;,&quot;name&quot;:&quot;service&quot;,&quot;type&quot;:&quot;CatalogEntry[\&quot;01GW2G3V0S59R238FAHPDS1R67\&quot;]&quot;}]
)
```

