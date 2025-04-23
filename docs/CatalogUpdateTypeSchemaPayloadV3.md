# IncidentIoSdk::CatalogUpdateTypeSchemaPayloadV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**Array&lt;CatalogTypeAttributePayloadV3&gt;**](CatalogTypeAttributePayloadV3.md) |  |  |
| **version** | **Integer** |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CatalogUpdateTypeSchemaPayloadV3.new(
  attributes: [{&quot;array&quot;:false,&quot;backlink_attribute&quot;:&quot;abc123&quot;,&quot;id&quot;:&quot;01GW2G3V0S59R238FAHPDS1R66&quot;,&quot;mode&quot;:&quot;api&quot;,&quot;name&quot;:&quot;tier&quot;,&quot;path&quot;:[{&quot;attribute_id&quot;:&quot;abc123&quot;}],&quot;type&quot;:&quot;Custom[\&quot;Service\&quot;]&quot;}],
  version: 1
)
```

