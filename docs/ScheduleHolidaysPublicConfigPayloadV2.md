# IncidentIoSdk::ScheduleHolidaysPublicConfigPayloadV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_codes** | **Array&lt;String&gt;** | ISO 3166-1 alpha-2 country codes for the countries that this schedule is configured to view holidays for |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::ScheduleHolidaysPublicConfigPayloadV2.new(
  country_codes: [&quot;abc123&quot;]
)
```

