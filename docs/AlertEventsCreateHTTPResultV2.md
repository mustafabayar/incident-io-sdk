# IncidentIoSdk::AlertEventsCreateHTTPResultV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deduplication_key** | **String** | The deduplication key that the event has been processed with |  |
| **message** | **String** | Human readable message giving detail about the event |  |
| **status** | **String** | Status of the event |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::AlertEventsCreateHTTPResultV2.new(
  deduplication_key: unique-key,
  message: Event accepted for processing,
  status: success
)
```

