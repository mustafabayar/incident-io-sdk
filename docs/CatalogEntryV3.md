# IncidentIoSdk::CatalogEntryV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aliases** | **Array&lt;String&gt;** | Optional aliases that can be used to reference this entry |  |
| **archived_at** | **Time** | When this entry was archived | [optional] |
| **attribute_values** | [**Hash&lt;String, CatalogEntryEngineParamBindingV3&gt;**](CatalogEntryEngineParamBindingV3.md) | Values of this entry |  |
| **catalog_type_id** | **String** | ID of this catalog type |  |
| **created_at** | **Time** | When this entry was created |  |
| **external_id** | **String** | An optional alternative ID for this entry, which is ensured to be unique for the type | [optional] |
| **id** | **String** | ID of this catalog entry |  |
| **name** | **String** | Name is the human readable name of this entry |  |
| **rank** | **Integer** | When catalog type is ranked, this is used to help order things |  |
| **updated_at** | **Time** | When this entry was last updated |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CatalogEntryV3.new(
  aliases: [&quot;lawrence@incident.io&quot;,&quot;lawrence&quot;],
  archived_at: 2021-08-17T14:28:57.801578Z,
  attribute_values: {&quot;abc123&quot;:{&quot;array_value&quot;:[{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;}],&quot;value&quot;:{&quot;label&quot;:&quot;Lawrence Jones&quot;,&quot;literal&quot;:&quot;SEV123&quot;}}},
  catalog_type_id: 01FCNDV6P870EA6S7TK1DSYDG0,
  created_at: 2021-08-17T13:28:57.801578Z,
  external_id: 761722cd-d1d7-477b-ac7e-90f9e079dc33,
  id: 01FCNDV6P870EA6S7TK1DSYDG0,
  name: Primary On-call,
  rank: 3,
  updated_at: 2021-08-17T13:28:57.801578Z
)
```

