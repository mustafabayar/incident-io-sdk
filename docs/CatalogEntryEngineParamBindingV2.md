# IncidentIoSdk::CatalogEntryEngineParamBindingV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **array_value** | [**Array&lt;CatalogEntryEngineParamBindingValueV2&gt;**](CatalogEntryEngineParamBindingValueV2.md) | If array_value is set, this helps render the values | [optional] |
| **value** | [**CatalogEntryEngineParamBindingValueV2**](CatalogEntryEngineParamBindingValueV2.md) |  | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CatalogEntryEngineParamBindingV2.new(
  array_value: [{&quot;catalog_entry&quot;:{&quot;archived_at&quot;:&quot;2021-08-17T14:28:57.801578Z&quot;,&quot;catalog_entry_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;catalog_entry_name&quot;:&quot;Primary escalation&quot;,&quot;catalog_type_id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;},&quot;helptext&quot;:&quot;abc123&quot;,&quot;image_url&quot;:&quot;abc123&quot;,&quot;is_image_slack_icon&quot;:false,&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;,&quot;sort_key&quot;:&quot;abc123&quot;,&quot;unavailable&quot;:false,&quot;value&quot;:&quot;abc123&quot;}],
  value: null
)
```

