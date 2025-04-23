# IncidentIoSdk::CatalogTypeAttributePayloadV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **array** | **Boolean** | Whether this attribute is an array |  |
| **backlink_attribute** | **String** | The attribute to use (if this is a backlink) | [optional] |
| **id** | **String** | The ID of this attribute | [optional] |
| **mode** | **String** | Controls how this attribute is modified | [optional] |
| **name** | **String** | Unique name of this attribute |  |
| **path** | [**Array&lt;CatalogTypeAttributePathItemPayloadV3&gt;**](CatalogTypeAttributePathItemPayloadV3.md) | The path to use (if this is an path) | [optional] |
| **type** | **String** | Catalog type name for this attribute |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CatalogTypeAttributePayloadV3.new(
  array: false,
  backlink_attribute: abc123,
  id: 01GW2G3V0S59R238FAHPDS1R66,
  mode: ,
  name: tier,
  path: [{&quot;attribute_id&quot;:&quot;abc123&quot;}],
  type: Custom[&quot;Service&quot;]
)
```

