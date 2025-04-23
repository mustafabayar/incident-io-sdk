# IncidentIoSdk::SeveritiesUpdatePayloadV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the severity |  |
| **name** | **String** | Human readable name of the severity |  |
| **rank** | **Integer** | Rank to help sort severities (lower numbers are less severe) | [optional] |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::SeveritiesUpdatePayloadV1.new(
  description: Issues with **low impact**.,
  name: Minor,
  rank: 1
)
```

