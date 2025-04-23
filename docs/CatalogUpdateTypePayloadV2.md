# IncidentIoSdk::CatalogUpdateTypePayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **annotations** | **Hash&lt;String, String&gt;** | Annotations that can track metadata about this type | [optional] |
| **categories** | **Array&lt;String&gt;** | What categories is this type considered part of | [optional] |
| **color** | **String** | Sets the display color of this type in the dashboard | [optional] |
| **description** | **String** | Human readble description of this type |  |
| **icon** | **String** | Sets the display icon of this type in the dashboard | [optional] |
| **name** | **String** | Name is the human readable name of this type |  |
| **ranked** | **Boolean** | If this type should be ranked | [optional] |
| **source_repo_url** | **String** | The url of the external repository where this type is managed | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CatalogUpdateTypePayloadV2.new(
  annotations: {&quot;incident.io/catalog-importer/id&quot;:&quot;id-of-config&quot;},
  categories: [&quot;issue-tracker&quot;],
  color: yellow,
  description: Represents Kubernetes clusters that we run inside of GKE.,
  icon: alert,
  name: Kubernetes Cluster,
  ranked: true,
  source_repo_url: https://github.com/my-company/incident-io-catalog
)
```

