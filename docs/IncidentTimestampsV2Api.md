# IncidentIoSdk::IncidentTimestampsV2Api

All URIs are relative to *https://api.incident.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**incident_timestamps_v2_list**](IncidentTimestampsV2Api.md#incident_timestamps_v2_list) | **GET** /v2/incident_timestamps | List Incident Timestamps V2 |
| [**incident_timestamps_v2_show**](IncidentTimestampsV2Api.md#incident_timestamps_v2_show) | **GET** /v2/incident_timestamps/{id} | Show Incident Timestamps V2 |


## incident_timestamps_v2_list

> <IncidentTimestampsListResultV2> incident_timestamps_v2_list

List Incident Timestamps V2

List all incident timestamps for an organisation.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentTimestampsV2Api.new

begin
  # List Incident Timestamps V2
  result = api_instance.incident_timestamps_v2_list
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentTimestampsV2Api->incident_timestamps_v2_list: #{e}"
end
```

#### Using the incident_timestamps_v2_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentTimestampsListResultV2>, Integer, Hash)> incident_timestamps_v2_list_with_http_info

```ruby
begin
  # List Incident Timestamps V2
  data, status_code, headers = api_instance.incident_timestamps_v2_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentTimestampsListResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentTimestampsV2Api->incident_timestamps_v2_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**IncidentTimestampsListResultV2**](IncidentTimestampsListResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## incident_timestamps_v2_show

> <IncidentTimestampsShowResultV2> incident_timestamps_v2_show(id)

Show Incident Timestamps V2

Get a single incident timestamp.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentTimestampsV2Api.new
id = '01FCNDV6P870EA6S7TK1DSYD5H' # String | Unique ID of this incident timestamp

begin
  # Show Incident Timestamps V2
  result = api_instance.incident_timestamps_v2_show(id)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentTimestampsV2Api->incident_timestamps_v2_show: #{e}"
end
```

#### Using the incident_timestamps_v2_show_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentTimestampsShowResultV2>, Integer, Hash)> incident_timestamps_v2_show_with_http_info(id)

```ruby
begin
  # Show Incident Timestamps V2
  data, status_code, headers = api_instance.incident_timestamps_v2_show_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentTimestampsShowResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentTimestampsV2Api->incident_timestamps_v2_show_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of this incident timestamp |  |

### Return type

[**IncidentTimestampsShowResultV2**](IncidentTimestampsShowResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

