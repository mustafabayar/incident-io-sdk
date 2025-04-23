# IncidentIoSdk::IncidentsV1Api

All URIs are relative to *https://api.incident.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**incidents_v1_create**](IncidentsV1Api.md#incidents_v1_create) | **POST** /v1/incidents | Create Incidents V1 |
| [**incidents_v1_list**](IncidentsV1Api.md#incidents_v1_list) | **GET** /v1/incidents | List Incidents V1 |
| [**incidents_v1_show**](IncidentsV1Api.md#incidents_v1_show) | **GET** /v1/incidents/{id} | Show Incidents V1 |


## incidents_v1_create

> <IncidentsCreateResultV1> incidents_v1_create(incidents_create_payload_v1)

Create Incidents V1

Create a new incident.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentsV1Api.new
incidents_create_payload_v1 = IncidentIoSdk::IncidentsCreatePayloadV1.new({idempotency_key: 'alert-uuid', visibility: 'public'}) # IncidentsCreatePayloadV1 | 

begin
  # Create Incidents V1
  result = api_instance.incidents_v1_create(incidents_create_payload_v1)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentsV1Api->incidents_v1_create: #{e}"
end
```

#### Using the incidents_v1_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentsCreateResultV1>, Integer, Hash)> incidents_v1_create_with_http_info(incidents_create_payload_v1)

```ruby
begin
  # Create Incidents V1
  data, status_code, headers = api_instance.incidents_v1_create_with_http_info(incidents_create_payload_v1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentsCreateResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentsV1Api->incidents_v1_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incidents_create_payload_v1** | [**IncidentsCreatePayloadV1**](IncidentsCreatePayloadV1.md) |  |  |

### Return type

[**IncidentsCreateResultV1**](IncidentsCreateResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## incidents_v1_list

> <IncidentsListResultV1> incidents_v1_list(opts)

List Incidents V1

List all incidents for an organisation.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentsV1Api.new
opts = {
  page_size: 25, # Integer | Integer number of records to return
  after: '01FDAG4SAP5TYPT98WGR2N7W91', # String | An record's ID. This endpoint will return a list of records after this ID in relation to the API response order.
  status: ['declined'] # Array<String> | Filter for incidents in these statuses
}

begin
  # List Incidents V1
  result = api_instance.incidents_v1_list(opts)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentsV1Api->incidents_v1_list: #{e}"
end
```

#### Using the incidents_v1_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentsListResultV1>, Integer, Hash)> incidents_v1_list_with_http_info(opts)

```ruby
begin
  # List Incidents V1
  data, status_code, headers = api_instance.incidents_v1_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentsListResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentsV1Api->incidents_v1_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_size** | **Integer** | Integer number of records to return | [optional][default to 25] |
| **after** | **String** | An record&#39;s ID. This endpoint will return a list of records after this ID in relation to the API response order. | [optional] |
| **status** | [**Array&lt;String&gt;**](String.md) | Filter for incidents in these statuses | [optional] |

### Return type

[**IncidentsListResultV1**](IncidentsListResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## incidents_v1_show

> <IncidentsShowResultV1> incidents_v1_show(id)

Show Incidents V1

Get a single incident.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentsV1Api.new
id = '01FDAG4SAP5TYPT98WGR2N7W91' # String | Unique identifier for the incident

begin
  # Show Incidents V1
  result = api_instance.incidents_v1_show(id)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentsV1Api->incidents_v1_show: #{e}"
end
```

#### Using the incidents_v1_show_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentsShowResultV1>, Integer, Hash)> incidents_v1_show_with_http_info(id)

```ruby
begin
  # Show Incidents V1
  data, status_code, headers = api_instance.incidents_v1_show_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentsShowResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentsV1Api->incidents_v1_show_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the incident |  |

### Return type

[**IncidentsShowResultV1**](IncidentsShowResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

