# IncidentIoSdk::CatalogTypeAttributeV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **array** | **Boolean** | Whether this attribute is an array |  |
| **backlink_attribute** | **String** | The attribute to use (if this is a backlink) | [optional] |
| **id** | **String** | The ID of this attribute |  |
| **mode** | **String** | Controls how this attribute is modified |  |
| **name** | **String** | Unique name of this attribute |  |
| **path** | [**Array&lt;CatalogTypeAttributePathItemV3&gt;**](CatalogTypeAttributePathItemV3.md) | The path to use (if this is a path attribute) | [optional] |
| **type** | **String** | Catalog type name for this attribute |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CatalogTypeAttributeV3.new(
  array: false,
  backlink_attribute: abc123,
  id: 01GW2G3V0S59R238FAHPDS1R66,
  mode: ,
  name: tier,
  path: [{&quot;attribute_id&quot;:&quot;abc123&quot;,&quot;attribute_name&quot;:&quot;abc123&quot;}],
  type: Custom[&quot;Service&quot;]
)
```

