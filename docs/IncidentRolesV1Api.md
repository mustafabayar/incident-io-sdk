# IncidentIoSdk::IncidentRolesV1Api

All URIs are relative to *https://api.incident.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**incident_roles_v1_create**](IncidentRolesV1Api.md#incident_roles_v1_create) | **POST** /v1/incident_roles | Create Incident Roles V1 |
| [**incident_roles_v1_delete**](IncidentRolesV1Api.md#incident_roles_v1_delete) | **DELETE** /v1/incident_roles/{id} | Delete Incident Roles V1 |
| [**incident_roles_v1_list**](IncidentRolesV1Api.md#incident_roles_v1_list) | **GET** /v1/incident_roles | List Incident Roles V1 |
| [**incident_roles_v1_show**](IncidentRolesV1Api.md#incident_roles_v1_show) | **GET** /v1/incident_roles/{id} | Show Incident Roles V1 |
| [**incident_roles_v1_update**](IncidentRolesV1Api.md#incident_roles_v1_update) | **PUT** /v1/incident_roles/{id} | Update Incident Roles V1 |


## incident_roles_v1_create

> <IncidentRolesCreateResultV1> incident_roles_v1_create(incident_roles_create_payload_v1)

Create Incident Roles V1

Create a new incident role

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentRolesV1Api.new
incident_roles_create_payload_v1 = IncidentIoSdk::IncidentRolesCreatePayloadV1.new({description: 'The person currently coordinating the incident', instructions: 'Take point on the incident; Make sure people are clear on responsibilities', name: 'Incident Lead', required: false, shortform: 'lead'}) # IncidentRolesCreatePayloadV1 | 

begin
  # Create Incident Roles V1
  result = api_instance.incident_roles_v1_create(incident_roles_create_payload_v1)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentRolesV1Api->incident_roles_v1_create: #{e}"
end
```

#### Using the incident_roles_v1_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentRolesCreateResultV1>, Integer, Hash)> incident_roles_v1_create_with_http_info(incident_roles_create_payload_v1)

```ruby
begin
  # Create Incident Roles V1
  data, status_code, headers = api_instance.incident_roles_v1_create_with_http_info(incident_roles_create_payload_v1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentRolesCreateResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentRolesV1Api->incident_roles_v1_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_roles_create_payload_v1** | [**IncidentRolesCreatePayloadV1**](IncidentRolesCreatePayloadV1.md) |  |  |

### Return type

[**IncidentRolesCreateResultV1**](IncidentRolesCreateResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## incident_roles_v1_delete

> incident_roles_v1_delete(id)

Delete Incident Roles V1

Removes an existing role

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentRolesV1Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | Unique identifier for the role

begin
  # Delete Incident Roles V1
  api_instance.incident_roles_v1_delete(id)
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentRolesV1Api->incident_roles_v1_delete: #{e}"
end
```

#### Using the incident_roles_v1_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> incident_roles_v1_delete_with_http_info(id)

```ruby
begin
  # Delete Incident Roles V1
  data, status_code, headers = api_instance.incident_roles_v1_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentRolesV1Api->incident_roles_v1_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the role |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## incident_roles_v1_list

> <IncidentRolesListResultV1> incident_roles_v1_list

List Incident Roles V1

List all incident roles for an organisation.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentRolesV1Api.new

begin
  # List Incident Roles V1
  result = api_instance.incident_roles_v1_list
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentRolesV1Api->incident_roles_v1_list: #{e}"
end
```

#### Using the incident_roles_v1_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentRolesListResultV1>, Integer, Hash)> incident_roles_v1_list_with_http_info

```ruby
begin
  # List Incident Roles V1
  data, status_code, headers = api_instance.incident_roles_v1_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentRolesListResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentRolesV1Api->incident_roles_v1_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**IncidentRolesListResultV1**](IncidentRolesListResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## incident_roles_v1_show

> <IncidentRolesShowResultV1> incident_roles_v1_show(id)

Show Incident Roles V1

Get a single incident role.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentRolesV1Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | Unique identifier for the role

begin
  # Show Incident Roles V1
  result = api_instance.incident_roles_v1_show(id)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentRolesV1Api->incident_roles_v1_show: #{e}"
end
```

#### Using the incident_roles_v1_show_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentRolesShowResultV1>, Integer, Hash)> incident_roles_v1_show_with_http_info(id)

```ruby
begin
  # Show Incident Roles V1
  data, status_code, headers = api_instance.incident_roles_v1_show_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentRolesShowResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentRolesV1Api->incident_roles_v1_show_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the role |  |

### Return type

[**IncidentRolesShowResultV1**](IncidentRolesShowResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## incident_roles_v1_update

> <IncidentRolesUpdateResultV1> incident_roles_v1_update(id, incident_roles_update_payload_v1)

Update Incident Roles V1

Update an existing incident role

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentRolesV1Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | Unique identifier for the role
incident_roles_update_payload_v1 = IncidentIoSdk::IncidentRolesUpdatePayloadV1.new({description: 'The person currently coordinating the incident', instructions: 'Take point on the incident; Make sure people are clear on responsibilities', name: 'Incident Lead', shortform: 'lead'}) # IncidentRolesUpdatePayloadV1 | 

begin
  # Update Incident Roles V1
  result = api_instance.incident_roles_v1_update(id, incident_roles_update_payload_v1)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentRolesV1Api->incident_roles_v1_update: #{e}"
end
```

#### Using the incident_roles_v1_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentRolesUpdateResultV1>, Integer, Hash)> incident_roles_v1_update_with_http_info(id, incident_roles_update_payload_v1)

```ruby
begin
  # Update Incident Roles V1
  data, status_code, headers = api_instance.incident_roles_v1_update_with_http_info(id, incident_roles_update_payload_v1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentRolesUpdateResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentRolesV1Api->incident_roles_v1_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the role |  |
| **incident_roles_update_payload_v1** | [**IncidentRolesUpdatePayloadV1**](IncidentRolesUpdatePayloadV1.md) |  |  |

### Return type

[**IncidentRolesUpdateResultV1**](IncidentRolesUpdateResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

