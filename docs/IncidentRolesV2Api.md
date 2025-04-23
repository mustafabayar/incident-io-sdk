# IncidentIoSdk::IncidentRolesV2Api

All URIs are relative to *https://api.incident.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**incident_roles_v2_create**](IncidentRolesV2Api.md#incident_roles_v2_create) | **POST** /v2/incident_roles | Create Incident Roles V2 |
| [**incident_roles_v2_delete**](IncidentRolesV2Api.md#incident_roles_v2_delete) | **DELETE** /v2/incident_roles/{id} | Delete Incident Roles V2 |
| [**incident_roles_v2_list**](IncidentRolesV2Api.md#incident_roles_v2_list) | **GET** /v2/incident_roles | List Incident Roles V2 |
| [**incident_roles_v2_show**](IncidentRolesV2Api.md#incident_roles_v2_show) | **GET** /v2/incident_roles/{id} | Show Incident Roles V2 |
| [**incident_roles_v2_update**](IncidentRolesV2Api.md#incident_roles_v2_update) | **PUT** /v2/incident_roles/{id} | Update Incident Roles V2 |


## incident_roles_v2_create

> <IncidentRolesCreateResultV2> incident_roles_v2_create(incident_roles_create_payload_v2)

Create Incident Roles V2

Create a new incident role

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentRolesV2Api.new
incident_roles_create_payload_v2 = IncidentIoSdk::IncidentRolesCreatePayloadV2.new({description: 'The person currently coordinating the incident', instructions: 'Take point on the incident; Make sure people are clear on responsibilities', name: 'Incident Lead', shortform: 'lead'}) # IncidentRolesCreatePayloadV2 | 

begin
  # Create Incident Roles V2
  result = api_instance.incident_roles_v2_create(incident_roles_create_payload_v2)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentRolesV2Api->incident_roles_v2_create: #{e}"
end
```

#### Using the incident_roles_v2_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentRolesCreateResultV2>, Integer, Hash)> incident_roles_v2_create_with_http_info(incident_roles_create_payload_v2)

```ruby
begin
  # Create Incident Roles V2
  data, status_code, headers = api_instance.incident_roles_v2_create_with_http_info(incident_roles_create_payload_v2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentRolesCreateResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentRolesV2Api->incident_roles_v2_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_roles_create_payload_v2** | [**IncidentRolesCreatePayloadV2**](IncidentRolesCreatePayloadV2.md) |  |  |

### Return type

[**IncidentRolesCreateResultV2**](IncidentRolesCreateResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## incident_roles_v2_delete

> incident_roles_v2_delete(id)

Delete Incident Roles V2

Removes an existing role

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentRolesV2Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | Unique identifier for the role

begin
  # Delete Incident Roles V2
  api_instance.incident_roles_v2_delete(id)
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentRolesV2Api->incident_roles_v2_delete: #{e}"
end
```

#### Using the incident_roles_v2_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> incident_roles_v2_delete_with_http_info(id)

```ruby
begin
  # Delete Incident Roles V2
  data, status_code, headers = api_instance.incident_roles_v2_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentRolesV2Api->incident_roles_v2_delete_with_http_info: #{e}"
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


## incident_roles_v2_list

> <IncidentRolesListResultV2> incident_roles_v2_list

List Incident Roles V2

List all incident roles for an organisation.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentRolesV2Api.new

begin
  # List Incident Roles V2
  result = api_instance.incident_roles_v2_list
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentRolesV2Api->incident_roles_v2_list: #{e}"
end
```

#### Using the incident_roles_v2_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentRolesListResultV2>, Integer, Hash)> incident_roles_v2_list_with_http_info

```ruby
begin
  # List Incident Roles V2
  data, status_code, headers = api_instance.incident_roles_v2_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentRolesListResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentRolesV2Api->incident_roles_v2_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**IncidentRolesListResultV2**](IncidentRolesListResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## incident_roles_v2_show

> <IncidentRolesShowResultV2> incident_roles_v2_show(id)

Show Incident Roles V2

Get a single incident role.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentRolesV2Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | Unique identifier for the role

begin
  # Show Incident Roles V2
  result = api_instance.incident_roles_v2_show(id)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentRolesV2Api->incident_roles_v2_show: #{e}"
end
```

#### Using the incident_roles_v2_show_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentRolesShowResultV2>, Integer, Hash)> incident_roles_v2_show_with_http_info(id)

```ruby
begin
  # Show Incident Roles V2
  data, status_code, headers = api_instance.incident_roles_v2_show_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentRolesShowResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentRolesV2Api->incident_roles_v2_show_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the role |  |

### Return type

[**IncidentRolesShowResultV2**](IncidentRolesShowResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## incident_roles_v2_update

> <IncidentRolesUpdateResultV2> incident_roles_v2_update(id, incident_roles_update_payload_v2)

Update Incident Roles V2

Update an existing incident role

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentRolesV2Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | Unique identifier for the role
incident_roles_update_payload_v2 = IncidentIoSdk::IncidentRolesUpdatePayloadV2.new({description: 'The person currently coordinating the incident', instructions: 'Take point on the incident; Make sure people are clear on responsibilities', name: 'Incident Lead', shortform: 'lead'}) # IncidentRolesUpdatePayloadV2 | 

begin
  # Update Incident Roles V2
  result = api_instance.incident_roles_v2_update(id, incident_roles_update_payload_v2)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentRolesV2Api->incident_roles_v2_update: #{e}"
end
```

#### Using the incident_roles_v2_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentRolesUpdateResultV2>, Integer, Hash)> incident_roles_v2_update_with_http_info(id, incident_roles_update_payload_v2)

```ruby
begin
  # Update Incident Roles V2
  data, status_code, headers = api_instance.incident_roles_v2_update_with_http_info(id, incident_roles_update_payload_v2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentRolesUpdateResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentRolesV2Api->incident_roles_v2_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the role |  |
| **incident_roles_update_payload_v2** | [**IncidentRolesUpdatePayloadV2**](IncidentRolesUpdatePayloadV2.md) |  |  |

### Return type

[**IncidentRolesUpdateResultV2**](IncidentRolesUpdateResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

