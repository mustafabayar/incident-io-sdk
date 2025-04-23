# IncidentIoSdk::IncidentTypesV1Api

All URIs are relative to *https://api.incident.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**incident_types_v1_list**](IncidentTypesV1Api.md#incident_types_v1_list) | **GET** /v1/incident_types | List Incident Types V1 |
| [**incident_types_v1_show**](IncidentTypesV1Api.md#incident_types_v1_show) | **GET** /v1/incident_types/{id} | Show Incident Types V1 |


## incident_types_v1_list

> <IncidentTypesListResultV1> incident_types_v1_list

List Incident Types V1

List all incident types for an organisation.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentTypesV1Api.new

begin
  # List Incident Types V1
  result = api_instance.incident_types_v1_list
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentTypesV1Api->incident_types_v1_list: #{e}"
end
```

#### Using the incident_types_v1_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentTypesListResultV1>, Integer, Hash)> incident_types_v1_list_with_http_info

```ruby
begin
  # List Incident Types V1
  data, status_code, headers = api_instance.incident_types_v1_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentTypesListResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentTypesV1Api->incident_types_v1_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**IncidentTypesListResultV1**](IncidentTypesListResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## incident_types_v1_show

> <IncidentTypesShowResultV1> incident_types_v1_show(id)

Show Incident Types V1

Get a single incident type.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentTypesV1Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | Unique identifier for this Incident Type

begin
  # Show Incident Types V1
  result = api_instance.incident_types_v1_show(id)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentTypesV1Api->incident_types_v1_show: #{e}"
end
```

#### Using the incident_types_v1_show_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentTypesShowResultV1>, Integer, Hash)> incident_types_v1_show_with_http_info(id)

```ruby
begin
  # Show Incident Types V1
  data, status_code, headers = api_instance.incident_types_v1_show_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentTypesShowResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentTypesV1Api->incident_types_v1_show_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for this Incident Type |  |

### Return type

[**IncidentTypesShowResultV1**](IncidentTypesShowResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

