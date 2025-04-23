# IncidentIoSdk::CatalogEntryEngineParamBindingValueV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_entry** | [**CatalogEntryReferenceV2**](CatalogEntryReferenceV2.md) |  | [optional] |
| **helptext** | **String** | This field is deprecated. It will not be present in any responses, and will be removed in a future version | [optional] |
| **image_url** | **String** | This field is deprecated. It will not be present in any responses, and will be removed in a future version | [optional] |
| **is_image_slack_icon** | **Boolean** | This field is deprecated. It will not be present in any responses, and will be removed in a future version | [optional] |
| **label** | **String** | Human readable label to be displayed for user to select |  |
| **literal** | **String** | If set, this is the literal value of the step parameter | [optional] |
| **reference** | **String** | This field is deprecated. It will not be present in any responses, and will be removed in a future version | [optional] |
| **sort_key** | **String** | This field is deprecated. It will not be present in any responses, and will be removed in a future version |  |
| **unavailable** | **Boolean** | This field is deprecated. It will not be present in any responses, and will be removed in a future version | [optional] |
| **value** | **String** | This field is deprecated. It will not be present in any responses, and will be removed in a future version | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::CatalogEntryEngineParamBindingValueV2.new(
  catalog_entry: null,
  helptext: abc123,
  image_url: abc123,
  is_image_slack_icon: false,
  label: Lawrence Jones,
  literal: SEV123,
  reference: incident.severity,
  sort_key: abc123,
  unavailable: false,
  value: abc123
)
```

