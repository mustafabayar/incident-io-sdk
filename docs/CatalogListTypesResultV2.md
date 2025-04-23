# IncidentIoSdk::CatalogListTypesResultV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_types** | [**Array&lt;CatalogTypeV2&gt;**](CatalogTypeV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CatalogListTypesResultV2.new(
  catalog_types: [{&quot;annotations&quot;:{&quot;incident.io/catalog-importer/id&quot;:&quot;id-of-config&quot;},&quot;categories&quot;:[&quot;issue-tracker&quot;],&quot;color&quot;:&quot;yellow&quot;,&quot;created_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;description&quot;:&quot;Represents Kubernetes clusters that we run inside of GKE.&quot;,&quot;dynamic_resource_parameter&quot;:&quot;abc123&quot;,&quot;estimated_count&quot;:7,&quot;icon&quot;:&quot;alert&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;is_editable&quot;:false,&quot;last_synced_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;name&quot;:&quot;Kubernetes Cluster&quot;,&quot;ranked&quot;:true,&quot;registry_type&quot;:&quot;PagerDutyService&quot;,&quot;required_integrations&quot;:[&quot;pager_duty&quot;],&quot;schema&quot;:{&quot;attributes&quot;:[{&quot;array&quot;:false,&quot;backlink_attribute&quot;:&quot;abc123&quot;,&quot;id&quot;:&quot;01GW2G3V0S59R238FAHPDS1R66&quot;,&quot;mode&quot;:&quot;manual&quot;,&quot;name&quot;:&quot;tier&quot;,&quot;path&quot;:[{&quot;attribute_id&quot;:&quot;abc123&quot;,&quot;attribute_name&quot;:&quot;abc123&quot;}],&quot;type&quot;:&quot;Custom[\&quot;Service\&quot;]&quot;}],&quot;version&quot;:1},&quot;semantic_type&quot;:&quot;custom&quot;,&quot;source_repo_url&quot;:&quot;https://github.com/my-company/incident-io-catalog&quot;,&quot;type_name&quot;:&quot;Custom[\&quot;BackstageGroup\&quot;]&quot;,&quot;updated_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;}]
)
```

