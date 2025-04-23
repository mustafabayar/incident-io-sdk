# IncidentIoSdk::CatalogUpdateEntryPayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aliases** | **Array&lt;String&gt;** | Optional aliases that can be used to reference this entry | [optional] |
| **attribute_values** | [**Hash&lt;String, EngineParamBindingPayloadV2&gt;**](EngineParamBindingPayloadV2.md) | Values of this entry |  |
| **external_id** | **String** | An optional alternative ID for this entry, which is ensured to be unique for the type | [optional] |
| **name** | **String** | Name is the human readable name of this entry |  |
| **rank** | **Integer** | When catalog type is ranked, this is used to help order things | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CatalogUpdateEntryPayloadV2.new(
  aliases: [&quot;lawrence@incident.io&quot;,&quot;lawrence&quot;],
  attribute_values: {&quot;abc123&quot;:{&quot;array_value&quot;:[{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}],&quot;value&quot;:{&quot;literal&quot;:&quot;SEV123&quot;,&quot;reference&quot;:&quot;incident.severity&quot;}}},
  external_id: 761722cd-d1d7-477b-ac7e-90f9e079dc33,
  name: Primary On-call,
  rank: 3
)
```

