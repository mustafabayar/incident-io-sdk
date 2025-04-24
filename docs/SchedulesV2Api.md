# IncidentIoSdk::SchedulesV2Api

All URIs are relative to *https://api.incident.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create**](SchedulesV2Api.md#create) | **POST** /v2/schedules | Create Schedules V2 |
| [**create_override**](SchedulesV2Api.md#create_override) | **POST** /v2/schedule_overrides | CreateOverride Schedules V2 |
| [**destroy**](SchedulesV2Api.md#destroy) | **DELETE** /v2/schedules/{id} | Destroy Schedules V2 |
| [**list**](SchedulesV2Api.md#list) | **GET** /v2/schedules | List Schedules V2 |
| [**list_schedule_entries**](SchedulesV2Api.md#list_schedule_entries) | **GET** /v2/schedule_entries | ListScheduleEntries Schedules V2 |
| [**show**](SchedulesV2Api.md#show) | **GET** /v2/schedules/{id} | Show Schedules V2 |
| [**update**](SchedulesV2Api.md#update) | **PUT** /v2/schedules/{id} | Update Schedules V2 |


## create

> <SchedulesCreateResultV2> create(schedules_create_payload_v2)

Create Schedules V2

Create a new schedule.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::SchedulesV2Api.new
schedules_create_payload_v2 = IncidentIoSdk::SchedulesCreatePayloadV2.new({schedule: IncidentIoSdk::ScheduleCreatePayloadV2.new}) # SchedulesCreatePayloadV2 | 

begin
  # Create Schedules V2
  result = api_instance.create(schedules_create_payload_v2)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling SchedulesV2Api->create: #{e}"
end
```

#### Using the create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SchedulesCreateResultV2>, Integer, Hash)> create_with_http_info(schedules_create_payload_v2)

```ruby
begin
  # Create Schedules V2
  data, status_code, headers = api_instance.create_with_http_info(schedules_create_payload_v2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SchedulesCreateResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling SchedulesV2Api->create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schedules_create_payload_v2** | [**SchedulesCreatePayloadV2**](SchedulesCreatePayloadV2.md) |  |  |

### Return type

[**SchedulesCreateResultV2**](SchedulesCreateResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_override

> <SchedulesCreateOverrideResultV2> create_override(schedules_create_override_payload_v2)

CreateOverride Schedules V2

Create a new schedule override.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::SchedulesV2Api.new
schedules_create_override_payload_v2 = IncidentIoSdk::SchedulesCreateOverridePayloadV2.new({end_at: Time.parse('2021-08-17T14:00Z'), layer_id: '01G0J1EXE7AXZ2C93K61WBPYNH', rotation_id: '01G0J1EXE7AXZ2C93K61WBPYEH', schedule_id: '01G0J1EXE7AXZ2C93K61WBPYEH', start_at: Time.parse('2021-08-17T13:00Z'), user: IncidentIoSdk::UserReferencePayloadV2.new}) # SchedulesCreateOverridePayloadV2 | 

begin
  # CreateOverride Schedules V2
  result = api_instance.create_override(schedules_create_override_payload_v2)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling SchedulesV2Api->create_override: #{e}"
end
```

#### Using the create_override_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SchedulesCreateOverrideResultV2>, Integer, Hash)> create_override_with_http_info(schedules_create_override_payload_v2)

```ruby
begin
  # CreateOverride Schedules V2
  data, status_code, headers = api_instance.create_override_with_http_info(schedules_create_override_payload_v2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SchedulesCreateOverrideResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling SchedulesV2Api->create_override_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schedules_create_override_payload_v2** | [**SchedulesCreateOverridePayloadV2**](SchedulesCreateOverridePayloadV2.md) |  |  |

### Return type

[**SchedulesCreateOverrideResultV2**](SchedulesCreateOverrideResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## destroy

> destroy(id)

Destroy Schedules V2

Archives a single schedule.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::SchedulesV2Api.new
id = '01G0J1EXE7AXZ2C93K61WBPYEH' # String | Unique internal ID of the schedule

begin
  # Destroy Schedules V2
  api_instance.destroy(id)
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling SchedulesV2Api->destroy: #{e}"
end
```

#### Using the destroy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> destroy_with_http_info(id)

```ruby
begin
  # Destroy Schedules V2
  data, status_code, headers = api_instance.destroy_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling SchedulesV2Api->destroy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique internal ID of the schedule |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list

> <SchedulesListResultV2> list(opts)

List Schedules V2

List configured schedules.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::SchedulesV2Api.new
opts = {
  page_size: 25, # Integer | number of records to return
  after: '01FDAG4SAP5TYPT98WGR2N7W91' # String | A schedule's ID. This endpoint will return a list of schedules after this ID in relation to the API response order.
}

begin
  # List Schedules V2
  result = api_instance.list(opts)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling SchedulesV2Api->list: #{e}"
end
```

#### Using the list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SchedulesListResultV2>, Integer, Hash)> list_with_http_info(opts)

```ruby
begin
  # List Schedules V2
  data, status_code, headers = api_instance.list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SchedulesListResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling SchedulesV2Api->list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_size** | **Integer** | number of records to return | [optional][default to 25] |
| **after** | **String** | A schedule&#39;s ID. This endpoint will return a list of schedules after this ID in relation to the API response order. | [optional] |

### Return type

[**SchedulesListResultV2**](SchedulesListResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_schedule_entries

> <SchedulesListScheduleEntriesResultV2> list_schedule_entries(schedule_id, opts)

ListScheduleEntries Schedules V2

Get a list of schedule entries. The endpoint will return all entries that overlap with the given window, if one is provided.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::SchedulesV2Api.new
schedule_id = '01FDAG4SAP5TYPT98WGR2N7W91' # String | The ID of the schedule to get entries for.
opts = {
  entry_window_start: Time.parse('2021-01-01T00:00:00Z'), # Time | The start of the window to get entries for.
  entry_window_end: Time.parse('2021-01-01T00:00:00Z') # Time | The end of the window to get entries for.
}

begin
  # ListScheduleEntries Schedules V2
  result = api_instance.list_schedule_entries(schedule_id, opts)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling SchedulesV2Api->list_schedule_entries: #{e}"
end
```

#### Using the list_schedule_entries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SchedulesListScheduleEntriesResultV2>, Integer, Hash)> list_schedule_entries_with_http_info(schedule_id, opts)

```ruby
begin
  # ListScheduleEntries Schedules V2
  data, status_code, headers = api_instance.list_schedule_entries_with_http_info(schedule_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SchedulesListScheduleEntriesResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling SchedulesV2Api->list_schedule_entries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schedule_id** | **String** | The ID of the schedule to get entries for. |  |
| **entry_window_start** | **Time** | The start of the window to get entries for. | [optional] |
| **entry_window_end** | **Time** | The end of the window to get entries for. | [optional] |

### Return type

[**SchedulesListScheduleEntriesResultV2**](SchedulesListScheduleEntriesResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show

> <SchedulesShowResultV2> show(id)

Show Schedules V2

Get a single schedule.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::SchedulesV2Api.new
id = '01G0J1EXE7AXZ2C93K61WBPYEH' # String | Unique internal ID of the schedule

begin
  # Show Schedules V2
  result = api_instance.show(id)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling SchedulesV2Api->show: #{e}"
end
```

#### Using the show_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SchedulesShowResultV2>, Integer, Hash)> show_with_http_info(id)

```ruby
begin
  # Show Schedules V2
  data, status_code, headers = api_instance.show_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SchedulesShowResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling SchedulesV2Api->show_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique internal ID of the schedule |  |

### Return type

[**SchedulesShowResultV2**](SchedulesShowResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update

> <SchedulesUpdateResultV2> update(id, schedules_update_payload_v2)

Update Schedules V2

Update a schedule.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::SchedulesV2Api.new
id = '01G0J1EXE7AXZ2C93K61WBPYEH' # String | The schedule ID to update.
schedules_update_payload_v2 = IncidentIoSdk::SchedulesUpdatePayloadV2.new({schedule: IncidentIoSdk::ScheduleUpdatePayloadV2.new}) # SchedulesUpdatePayloadV2 | 

begin
  # Update Schedules V2
  result = api_instance.update(id, schedules_update_payload_v2)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling SchedulesV2Api->update: #{e}"
end
```

#### Using the update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SchedulesUpdateResultV2>, Integer, Hash)> update_with_http_info(id, schedules_update_payload_v2)

```ruby
begin
  # Update Schedules V2
  data, status_code, headers = api_instance.update_with_http_info(id, schedules_update_payload_v2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SchedulesUpdateResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling SchedulesV2Api->update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The schedule ID to update. |  |
| **schedules_update_payload_v2** | [**SchedulesUpdatePayloadV2**](SchedulesUpdatePayloadV2.md) |  |  |

### Return type

[**SchedulesUpdateResultV2**](SchedulesUpdateResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

