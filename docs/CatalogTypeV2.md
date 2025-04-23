# IncidentIoSdk::CatalogTypeV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **annotations** | **Hash&lt;String, String&gt;** | Annotations that can track metadata about this type |  |
| **categories** | **Array&lt;String&gt;** | What categories is this type considered part of |  |
| **color** | **String** | Sets the display color of this type in the dashboard |  |
| **created_at** | **Time** | When this type was created |  |
| **description** | **String** | Human readble description of this type |  |
| **dynamic_resource_parameter** | **String** | If this is a dynamic catalog type, this will be the unique parameter for identitfying this resource externally. | [optional] |
| **estimated_count** | **Integer** | If populated, gives an estimated count of entries for this type | [optional] |
| **icon** | **String** | Sets the display icon of this type in the dashboard |  |
| **id** | **String** | ID of this catalog type |  |
| **is_editable** | **Boolean** | Catalog types that are synced with external resources can&#39;t be edited |  |
| **last_synced_at** | **Time** | When this type was last synced (if it&#39;s ever been sync&#39;d) | [optional] |
| **name** | **String** | Name is the human readable name of this type |  |
| **ranked** | **Boolean** | If this type should be ranked |  |
| **registry_type** | **String** | The registry resource this type is synced from, if any | [optional] |
| **required_integrations** | **Array&lt;String&gt;** | If populated, the integrations required for this type | [optional] |
| **schema** | [**CatalogTypeSchemaV2**](CatalogTypeSchemaV2.md) |  |  |
| **semantic_type** | **String** | This type has been deprecated, and will always be empty. |  |
| **source_repo_url** | **String** | The url of the external repository where this type is managed | [optional] |
| **type_name** | **String** | The type name of this catalog type, to be used when defining attributes. This is immutable once a CatalogType has been created. For non-externally sync types, it must follow the pattern Custom[\&quot;SomeName\&quot;] |  |
| **updated_at** | **Time** | When this type was last updated |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CatalogTypeV2.new(
  annotations: {&quot;incident.io/catalog-importer/id&quot;:&quot;id-of-config&quot;},
  categories: [&quot;customer&quot;],
  color: yellow,
  created_at: 2021-08-17T13:28:57.801578Z,
  description: Represents Kubernetes clusters that we run inside of GKE.,
  dynamic_resource_parameter: abc123,
  estimated_count: 7,
  icon: alert,
  id: 01FCNDV6P870EA6S7TK1DSYDG0,
  is_editable: false,
  last_synced_at: 2021-08-17T13:28:57.801578Z,
  name: Kubernetes Cluster,
  ranked: true,
  registry_type: PagerDutyService,
  required_integrations: [&quot;pager_duty&quot;],
  schema: null,
  semantic_type: abc123,
  source_repo_url: https://github.com/my-company/incident-io-catalog,
  type_name: Custom[&quot;BackstageGroup&quot;],
  updated_at: 2021-08-17T13:28:57.801578Z
)
```

