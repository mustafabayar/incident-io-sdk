# IncidentIoSdk::CatalogResourceV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | **String** | Which category of resource |  |
| **description** | **String** | Human readable description for this resource |  |
| **label** | **String** | Label for this catalog resource type |  |
| **type** | **String** | Catalog type name for this resource |  |
| **value_docstring** | **String** | Documentation for the literal string value of this resource |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CatalogResourceV3.new(
  category: custom,
  description: Boolean true or false value,
  label: GitHub Repository,
  type: CatalogEntry[&quot;01GVGYJSD39FRKVDWACK9NDS4E&quot;],
  value_docstring: Either the GraphQL node ID of the repository or a string of &lt;owner&gt;/&lt;repo&gt;, e.g. incident-io/website
)
```

