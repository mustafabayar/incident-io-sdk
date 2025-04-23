# IncidentIoSdk::IncidentStatusesV1Api

All URIs are relative to *https://api.incident.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**incident_statuses_v1_create**](IncidentStatusesV1Api.md#incident_statuses_v1_create) | **POST** /v1/incident_statuses | Create Incident Statuses V1 |
| [**incident_statuses_v1_delete**](IncidentStatusesV1Api.md#incident_statuses_v1_delete) | **DELETE** /v1/incident_statuses/{id} | Delete Incident Statuses V1 |
| [**incident_statuses_v1_list**](IncidentStatusesV1Api.md#incident_statuses_v1_list) | **GET** /v1/incident_statuses | List Incident Statuses V1 |
| [**incident_statuses_v1_show**](IncidentStatusesV1Api.md#incident_statuses_v1_show) | **GET** /v1/incident_statuses/{id} | Show Incident Statuses V1 |
| [**incident_statuses_v1_update**](IncidentStatusesV1Api.md#incident_statuses_v1_update) | **PUT** /v1/incident_statuses/{id} | Update Incident Statuses V1 |


## incident_statuses_v1_create

> <IncidentStatusesCreateResultV1> incident_statuses_v1_create(incident_statuses_create_payload_v1)

Create Incident Statuses V1

Create a new incident status

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentStatusesV1Api.new
incident_statuses_create_payload_v1 = IncidentIoSdk::IncidentStatusesCreatePayloadV1.new({category: 'live', description: 'Impact has been **fully mitigated**, and we're ready to learn from this incident.', name: 'Closed'}) # IncidentStatusesCreatePayloadV1 | 

begin
  # Create Incident Statuses V1
  result = api_instance.incident_statuses_v1_create(incident_statuses_create_payload_v1)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentStatusesV1Api->incident_statuses_v1_create: #{e}"
end
```

#### Using the incident_statuses_v1_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentStatusesCreateResultV1>, Integer, Hash)> incident_statuses_v1_create_with_http_info(incident_statuses_create_payload_v1)

```ruby
begin
  # Create Incident Statuses V1
  data, status_code, headers = api_instance.incident_statuses_v1_create_with_http_info(incident_statuses_create_payload_v1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentStatusesCreateResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentStatusesV1Api->incident_statuses_v1_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_statuses_create_payload_v1** | [**IncidentStatusesCreatePayloadV1**](IncidentStatusesCreatePayloadV1.md) |  |  |

### Return type

[**IncidentStatusesCreateResultV1**](IncidentStatusesCreateResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## incident_statuses_v1_delete

> incident_statuses_v1_delete(id)

Delete Incident Statuses V1

Delete an incident status

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentStatusesV1Api.new
id = '01FCNDV6P870EA6S7TK1DSYD5H' # String | Unique ID of this incident status

begin
  # Delete Incident Statuses V1
  api_instance.incident_statuses_v1_delete(id)
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentStatusesV1Api->incident_statuses_v1_delete: #{e}"
end
```

#### Using the incident_statuses_v1_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> incident_statuses_v1_delete_with_http_info(id)

```ruby
begin
  # Delete Incident Statuses V1
  data, status_code, headers = api_instance.incident_statuses_v1_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentStatusesV1Api->incident_statuses_v1_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of this incident status |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## incident_statuses_v1_list

> <IncidentStatusesListResultV1> incident_statuses_v1_list

List Incident Statuses V1

List all incident statuses for an organisation.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentStatusesV1Api.new

begin
  # List Incident Statuses V1
  result = api_instance.incident_statuses_v1_list
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentStatusesV1Api->incident_statuses_v1_list: #{e}"
end
```

#### Using the incident_statuses_v1_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentStatusesListResultV1>, Integer, Hash)> incident_statuses_v1_list_with_http_info

```ruby
begin
  # List Incident Statuses V1
  data, status_code, headers = api_instance.incident_statuses_v1_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentStatusesListResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentStatusesV1Api->incident_statuses_v1_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**IncidentStatusesListResultV1**](IncidentStatusesListResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## incident_statuses_v1_show

> <IncidentStatusesShowResultV1> incident_statuses_v1_show(id)

Show Incident Statuses V1

Get a single incident status.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentStatusesV1Api.new
id = '01FCNDV6P870EA6S7TK1DSYD5H' # String | Unique ID of this incident status

begin
  # Show Incident Statuses V1
  result = api_instance.incident_statuses_v1_show(id)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentStatusesV1Api->incident_statuses_v1_show: #{e}"
end
```

#### Using the incident_statuses_v1_show_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentStatusesShowResultV1>, Integer, Hash)> incident_statuses_v1_show_with_http_info(id)

```ruby
begin
  # Show Incident Statuses V1
  data, status_code, headers = api_instance.incident_statuses_v1_show_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentStatusesShowResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentStatusesV1Api->incident_statuses_v1_show_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of this incident status |  |

### Return type

[**IncidentStatusesShowResultV1**](IncidentStatusesShowResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## incident_statuses_v1_update

> <IncidentStatusesUpdateResultV1> incident_statuses_v1_update(id, incident_statuses_update_payload_v1)

Update Incident Statuses V1

Update an existing incident status

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentStatusesV1Api.new
id = '01FCNDV6P870EA6S7TK1DSYD5H' # String | Unique ID of this incident status
incident_statuses_update_payload_v1 = IncidentIoSdk::IncidentStatusesUpdatePayloadV1.new({description: 'Impact has been **fully mitigated**, and we're ready to learn from this incident.', name: 'Closed'}) # IncidentStatusesUpdatePayloadV1 | 

begin
  # Update Incident Statuses V1
  result = api_instance.incident_statuses_v1_update(id, incident_statuses_update_payload_v1)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentStatusesV1Api->incident_statuses_v1_update: #{e}"
end
```

#### Using the incident_statuses_v1_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentStatusesUpdateResultV1>, Integer, Hash)> incident_statuses_v1_update_with_http_info(id, incident_statuses_update_payload_v1)

```ruby
begin
  # Update Incident Statuses V1
  data, status_code, headers = api_instance.incident_statuses_v1_update_with_http_info(id, incident_statuses_update_payload_v1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentStatusesUpdateResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentStatusesV1Api->incident_statuses_v1_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of this incident status |  |
| **incident_statuses_update_payload_v1** | [**IncidentStatusesUpdatePayloadV1**](IncidentStatusesUpdatePayloadV1.md) |  |  |

### Return type

[**IncidentStatusesUpdateResultV1**](IncidentStatusesUpdateResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

