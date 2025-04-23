# IncidentIoSdk::CustomFieldsV1Api

All URIs are relative to *https://api.incident.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**custom_fields_v1_create**](CustomFieldsV1Api.md#custom_fields_v1_create) | **POST** /v1/custom_fields | Create Custom Fields V1 |
| [**custom_fields_v1_delete**](CustomFieldsV1Api.md#custom_fields_v1_delete) | **DELETE** /v1/custom_fields/{id} | Delete Custom Fields V1 |
| [**custom_fields_v1_list**](CustomFieldsV1Api.md#custom_fields_v1_list) | **GET** /v1/custom_fields | List Custom Fields V1 |
| [**custom_fields_v1_show**](CustomFieldsV1Api.md#custom_fields_v1_show) | **GET** /v1/custom_fields/{id} | Show Custom Fields V1 |
| [**custom_fields_v1_update**](CustomFieldsV1Api.md#custom_fields_v1_update) | **PUT** /v1/custom_fields/{id} | Update Custom Fields V1 |


## custom_fields_v1_create

> <CustomFieldsCreateResultV1> custom_fields_v1_create(custom_fields_create_payload_v1)

Create Custom Fields V1

Create a new custom field

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CustomFieldsV1Api.new
custom_fields_create_payload_v1 = IncidentIoSdk::CustomFieldsCreatePayloadV1.new({description: 'Which team is impacted by this issue', field_type: 'single_select', name: 'Affected Team', show_before_closure: true, show_before_creation: true, show_before_update: true}) # CustomFieldsCreatePayloadV1 | 

begin
  # Create Custom Fields V1
  result = api_instance.custom_fields_v1_create(custom_fields_create_payload_v1)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldsV1Api->custom_fields_v1_create: #{e}"
end
```

#### Using the custom_fields_v1_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomFieldsCreateResultV1>, Integer, Hash)> custom_fields_v1_create_with_http_info(custom_fields_create_payload_v1)

```ruby
begin
  # Create Custom Fields V1
  data, status_code, headers = api_instance.custom_fields_v1_create_with_http_info(custom_fields_create_payload_v1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomFieldsCreateResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldsV1Api->custom_fields_v1_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_fields_create_payload_v1** | [**CustomFieldsCreatePayloadV1**](CustomFieldsCreatePayloadV1.md) |  |  |

### Return type

[**CustomFieldsCreateResultV1**](CustomFieldsCreateResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## custom_fields_v1_delete

> custom_fields_v1_delete(id)

Delete Custom Fields V1

Delete a custom field

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CustomFieldsV1Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | Unique identifier for the custom field

begin
  # Delete Custom Fields V1
  api_instance.custom_fields_v1_delete(id)
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldsV1Api->custom_fields_v1_delete: #{e}"
end
```

#### Using the custom_fields_v1_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> custom_fields_v1_delete_with_http_info(id)

```ruby
begin
  # Delete Custom Fields V1
  data, status_code, headers = api_instance.custom_fields_v1_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldsV1Api->custom_fields_v1_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the custom field |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## custom_fields_v1_list

> <CustomFieldsListResultV1> custom_fields_v1_list

List Custom Fields V1

List all custom fields for an organisation.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CustomFieldsV1Api.new

begin
  # List Custom Fields V1
  result = api_instance.custom_fields_v1_list
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldsV1Api->custom_fields_v1_list: #{e}"
end
```

#### Using the custom_fields_v1_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomFieldsListResultV1>, Integer, Hash)> custom_fields_v1_list_with_http_info

```ruby
begin
  # List Custom Fields V1
  data, status_code, headers = api_instance.custom_fields_v1_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomFieldsListResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldsV1Api->custom_fields_v1_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CustomFieldsListResultV1**](CustomFieldsListResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## custom_fields_v1_show

> <CustomFieldsShowResultV1> custom_fields_v1_show(id)

Show Custom Fields V1

Get a single custom field.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CustomFieldsV1Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | Unique identifier for the custom field

begin
  # Show Custom Fields V1
  result = api_instance.custom_fields_v1_show(id)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldsV1Api->custom_fields_v1_show: #{e}"
end
```

#### Using the custom_fields_v1_show_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomFieldsShowResultV1>, Integer, Hash)> custom_fields_v1_show_with_http_info(id)

```ruby
begin
  # Show Custom Fields V1
  data, status_code, headers = api_instance.custom_fields_v1_show_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomFieldsShowResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldsV1Api->custom_fields_v1_show_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the custom field |  |

### Return type

[**CustomFieldsShowResultV1**](CustomFieldsShowResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## custom_fields_v1_update

> <CustomFieldsUpdateResultV1> custom_fields_v1_update(id, custom_fields_update_payload_v1)

Update Custom Fields V1

Update the details of a custom field

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CustomFieldsV1Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | Unique identifier for the custom field
custom_fields_update_payload_v1 = IncidentIoSdk::CustomFieldsUpdatePayloadV1.new({description: 'Which team is impacted by this issue', name: 'Affected Team', show_before_closure: true, show_before_creation: true, show_before_update: true}) # CustomFieldsUpdatePayloadV1 | 

begin
  # Update Custom Fields V1
  result = api_instance.custom_fields_v1_update(id, custom_fields_update_payload_v1)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldsV1Api->custom_fields_v1_update: #{e}"
end
```

#### Using the custom_fields_v1_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomFieldsUpdateResultV1>, Integer, Hash)> custom_fields_v1_update_with_http_info(id, custom_fields_update_payload_v1)

```ruby
begin
  # Update Custom Fields V1
  data, status_code, headers = api_instance.custom_fields_v1_update_with_http_info(id, custom_fields_update_payload_v1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomFieldsUpdateResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldsV1Api->custom_fields_v1_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the custom field |  |
| **custom_fields_update_payload_v1** | [**CustomFieldsUpdatePayloadV1**](CustomFieldsUpdatePayloadV1.md) |  |  |

### Return type

[**CustomFieldsUpdateResultV1**](CustomFieldsUpdateResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

