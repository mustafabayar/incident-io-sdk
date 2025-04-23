# IncidentIoSdk::AlertAttributeEntryV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **array_value** | [**Array&lt;AlertAttributeValueV2&gt;**](AlertAttributeValueV2.md) | The value of the attribute if it is an array | [optional] |
| **attribute** | [**AlertAttributeV2**](AlertAttributeV2.md) |  |  |
| **value** | [**AlertAttributeValueV2**](AlertAttributeValueV2.md) |  | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertAttributeEntryV2.new(
  array_value: [{&quot;catalog_entry&quot;:{&quot;catalog_type_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;name&quot;:&quot;Primary On-call&quot;},&quot;label&quot;:&quot;Payments Team&quot;,&quot;literal&quot;:&quot;SEV123&quot;}],
  attribute: null,
  value: null
)
```

