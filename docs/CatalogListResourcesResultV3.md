# IncidentIoSdk::CatalogListResourcesResultV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resources** | [**Array&lt;CatalogResourceV3&gt;**](CatalogResourceV3.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CatalogListResourcesResultV3.new(
  resources: [{&quot;category&quot;:&quot;custom&quot;,&quot;description&quot;:&quot;Boolean true or false value&quot;,&quot;label&quot;:&quot;GitHub Repository&quot;,&quot;type&quot;:&quot;CatalogEntry[\&quot;01GVGYJSD39FRKVDWACK9NDS4E\&quot;]&quot;,&quot;value_docstring&quot;:&quot;Either the GraphQL node ID of the repository or a string of &lt;owner&gt;/&lt;repo&gt;, e.g. incident-io/website&quot;}]
)
```

