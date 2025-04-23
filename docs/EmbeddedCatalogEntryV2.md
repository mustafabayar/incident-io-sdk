# IncidentIoSdk::EmbeddedCatalogEntryV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aliases** | **Array&lt;String&gt;** | Optional aliases that can be used to reference this entry | [optional] |
| **external_id** | **String** | An optional alternative ID for this entry, which is ensured to be unique for the type | [optional] |
| **id** | **String** | ID of this catalog entry |  |
| **name** | **String** | Name is the human readable name of this entry |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::EmbeddedCatalogEntryV2.new(
  aliases: [&quot;lawrence@incident.io&quot;,&quot;lawrence&quot;],
  external_id: 761722cd-d1d7-477b-ac7e-90f9e079dc33,
  id: 01FCNDV6P870EA6S7TK1DSYDG0,
  name: Primary On-call
)
```

