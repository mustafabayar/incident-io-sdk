# IncidentIoSdk::SeveritiesV1Api

All URIs are relative to *https://api.incident.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**severities_v1_create**](SeveritiesV1Api.md#severities_v1_create) | **POST** /v1/severities | Create Severities V1 |
| [**severities_v1_delete**](SeveritiesV1Api.md#severities_v1_delete) | **DELETE** /v1/severities/{id} | Delete Severities V1 |
| [**severities_v1_list**](SeveritiesV1Api.md#severities_v1_list) | **GET** /v1/severities | List Severities V1 |
| [**severities_v1_show**](SeveritiesV1Api.md#severities_v1_show) | **GET** /v1/severities/{id} | Show Severities V1 |
| [**severities_v1_update**](SeveritiesV1Api.md#severities_v1_update) | **PUT** /v1/severities/{id} | Update Severities V1 |


## severities_v1_create

> <SeveritiesCreateResultV1> severities_v1_create(severities_create_payload_v1)

Create Severities V1

Create a new severity

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::SeveritiesV1Api.new
severities_create_payload_v1 = IncidentIoSdk::SeveritiesCreatePayloadV1.new({description: 'Issues with **low impact**.', name: 'Minor'}) # SeveritiesCreatePayloadV1 | 

begin
  # Create Severities V1
  result = api_instance.severities_v1_create(severities_create_payload_v1)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling SeveritiesV1Api->severities_v1_create: #{e}"
end
```

#### Using the severities_v1_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SeveritiesCreateResultV1>, Integer, Hash)> severities_v1_create_with_http_info(severities_create_payload_v1)

```ruby
begin
  # Create Severities V1
  data, status_code, headers = api_instance.severities_v1_create_with_http_info(severities_create_payload_v1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeveritiesCreateResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling SeveritiesV1Api->severities_v1_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **severities_create_payload_v1** | [**SeveritiesCreatePayloadV1**](SeveritiesCreatePayloadV1.md) |  |  |

### Return type

[**SeveritiesCreateResultV1**](SeveritiesCreateResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## severities_v1_delete

> severities_v1_delete(id)

Delete Severities V1

Delete a severity

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::SeveritiesV1Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | Unique identifier of the severity

begin
  # Delete Severities V1
  api_instance.severities_v1_delete(id)
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling SeveritiesV1Api->severities_v1_delete: #{e}"
end
```

#### Using the severities_v1_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> severities_v1_delete_with_http_info(id)

```ruby
begin
  # Delete Severities V1
  data, status_code, headers = api_instance.severities_v1_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling SeveritiesV1Api->severities_v1_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the severity |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## severities_v1_list

> <SeveritiesListResultV1> severities_v1_list

List Severities V1

List all incident severities for an organisation.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::SeveritiesV1Api.new

begin
  # List Severities V1
  result = api_instance.severities_v1_list
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling SeveritiesV1Api->severities_v1_list: #{e}"
end
```

#### Using the severities_v1_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SeveritiesListResultV1>, Integer, Hash)> severities_v1_list_with_http_info

```ruby
begin
  # List Severities V1
  data, status_code, headers = api_instance.severities_v1_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeveritiesListResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling SeveritiesV1Api->severities_v1_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SeveritiesListResultV1**](SeveritiesListResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## severities_v1_show

> <SeveritiesShowResultV1> severities_v1_show(id)

Show Severities V1

Get a single incident severity.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::SeveritiesV1Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | Unique identifier of the severity

begin
  # Show Severities V1
  result = api_instance.severities_v1_show(id)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling SeveritiesV1Api->severities_v1_show: #{e}"
end
```

#### Using the severities_v1_show_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SeveritiesShowResultV1>, Integer, Hash)> severities_v1_show_with_http_info(id)

```ruby
begin
  # Show Severities V1
  data, status_code, headers = api_instance.severities_v1_show_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeveritiesShowResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling SeveritiesV1Api->severities_v1_show_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the severity |  |

### Return type

[**SeveritiesShowResultV1**](SeveritiesShowResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## severities_v1_update

> <SeveritiesUpdateResultV1> severities_v1_update(id, severities_update_payload_v1)

Update Severities V1

Update an existing severity

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::SeveritiesV1Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | Unique identifier of the severity
severities_update_payload_v1 = IncidentIoSdk::SeveritiesUpdatePayloadV1.new({description: 'Issues with **low impact**.', name: 'Minor'}) # SeveritiesUpdatePayloadV1 | 

begin
  # Update Severities V1
  result = api_instance.severities_v1_update(id, severities_update_payload_v1)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling SeveritiesV1Api->severities_v1_update: #{e}"
end
```

#### Using the severities_v1_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SeveritiesUpdateResultV1>, Integer, Hash)> severities_v1_update_with_http_info(id, severities_update_payload_v1)

```ruby
begin
  # Update Severities V1
  data, status_code, headers = api_instance.severities_v1_update_with_http_info(id, severities_update_payload_v1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeveritiesUpdateResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling SeveritiesV1Api->severities_v1_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the severity |  |
| **severities_update_payload_v1** | [**SeveritiesUpdatePayloadV1**](SeveritiesUpdatePayloadV1.md) |  |  |

### Return type

[**SeveritiesUpdateResultV1**](SeveritiesUpdateResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

