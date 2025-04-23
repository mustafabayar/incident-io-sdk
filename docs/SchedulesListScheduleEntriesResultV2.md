# IncidentIoSdk::SchedulesListScheduleEntriesResultV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pagination_meta** | [**AfterPaginationMetaResultV2**](AfterPaginationMetaResultV2.md) |  | [optional] |
| **schedule_entries** | [**ScheduleEntriesListPayloadV2**](ScheduleEntriesListPayloadV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::SchedulesListScheduleEntriesResultV2.new(
  pagination_meta: null,
  schedule_entries: null
)
```

