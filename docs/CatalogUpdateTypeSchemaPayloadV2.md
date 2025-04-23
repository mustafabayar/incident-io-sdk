# IncidentIoSdk::CatalogUpdateTypeSchemaPayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**Array&lt;CatalogTypeAttributePayloadV2&gt;**](CatalogTypeAttributePayloadV2.md) |  |  |
| **version** | **Integer** |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CatalogUpdateTypeSchemaPayloadV2.new(
  attributes: [{&quot;array&quot;:false,&quot;backlink_attribute&quot;:&quot;abc123&quot;,&quot;id&quot;:&quot;01GW2G3V0S59R238FAHPDS1R66&quot;,&quot;mode&quot;:&quot;manual&quot;,&quot;name&quot;:&quot;tier&quot;,&quot;path&quot;:[{&quot;attribute_id&quot;:&quot;abc123&quot;}],&quot;type&quot;:&quot;Custom[\&quot;Service\&quot;]&quot;}],
  version: 1
)
```

