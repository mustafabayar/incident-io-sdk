# IncidentIoSdk::CustomFieldsV2Api

All URIs are relative to *https://api.incident.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**custom_fields_v2_create**](CustomFieldsV2Api.md#custom_fields_v2_create) | **POST** /v2/custom_fields | Create Custom Fields V2 |
| [**custom_fields_v2_delete**](CustomFieldsV2Api.md#custom_fields_v2_delete) | **DELETE** /v2/custom_fields/{id} | Delete Custom Fields V2 |
| [**custom_fields_v2_list**](CustomFieldsV2Api.md#custom_fields_v2_list) | **GET** /v2/custom_fields | List Custom Fields V2 |
| [**custom_fields_v2_show**](CustomFieldsV2Api.md#custom_fields_v2_show) | **GET** /v2/custom_fields/{id} | Show Custom Fields V2 |
| [**custom_fields_v2_update**](CustomFieldsV2Api.md#custom_fields_v2_update) | **PUT** /v2/custom_fields/{id} | Update Custom Fields V2 |


## custom_fields_v2_create

> <CustomFieldsCreateResultV2> custom_fields_v2_create(custom_fields_create_payload_v2)

Create Custom Fields V2

Create a new custom field

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CustomFieldsV2Api.new
custom_fields_create_payload_v2 = IncidentIoSdk::CustomFieldsCreatePayloadV2.new({description: 'Which team is impacted by this issue', field_type: 'single_select', name: 'Affected Team'}) # CustomFieldsCreatePayloadV2 | 

begin
  # Create Custom Fields V2
  result = api_instance.custom_fields_v2_create(custom_fields_create_payload_v2)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldsV2Api->custom_fields_v2_create: #{e}"
end
```

#### Using the custom_fields_v2_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomFieldsCreateResultV2>, Integer, Hash)> custom_fields_v2_create_with_http_info(custom_fields_create_payload_v2)

```ruby
begin
  # Create Custom Fields V2
  data, status_code, headers = api_instance.custom_fields_v2_create_with_http_info(custom_fields_create_payload_v2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomFieldsCreateResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldsV2Api->custom_fields_v2_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_fields_create_payload_v2** | [**CustomFieldsCreatePayloadV2**](CustomFieldsCreatePayloadV2.md) |  |  |

### Return type

[**CustomFieldsCreateResultV2**](CustomFieldsCreateResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## custom_fields_v2_delete

> custom_fields_v2_delete(id)

Delete Custom Fields V2

Delete a custom field

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CustomFieldsV2Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | Unique identifier for the custom field

begin
  # Delete Custom Fields V2
  api_instance.custom_fields_v2_delete(id)
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldsV2Api->custom_fields_v2_delete: #{e}"
end
```

#### Using the custom_fields_v2_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> custom_fields_v2_delete_with_http_info(id)

```ruby
begin
  # Delete Custom Fields V2
  data, status_code, headers = api_instance.custom_fields_v2_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldsV2Api->custom_fields_v2_delete_with_http_info: #{e}"
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


## custom_fields_v2_list

> <CustomFieldsListResultV2> custom_fields_v2_list

List Custom Fields V2

List all custom fields for an organisation.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CustomFieldsV2Api.new

begin
  # List Custom Fields V2
  result = api_instance.custom_fields_v2_list
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldsV2Api->custom_fields_v2_list: #{e}"
end
```

#### Using the custom_fields_v2_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomFieldsListResultV2>, Integer, Hash)> custom_fields_v2_list_with_http_info

```ruby
begin
  # List Custom Fields V2
  data, status_code, headers = api_instance.custom_fields_v2_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomFieldsListResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldsV2Api->custom_fields_v2_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CustomFieldsListResultV2**](CustomFieldsListResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## custom_fields_v2_show

> <CustomFieldsShowResultV2> custom_fields_v2_show(id)

Show Custom Fields V2

Get a single custom field.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CustomFieldsV2Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | Unique identifier for the custom field

begin
  # Show Custom Fields V2
  result = api_instance.custom_fields_v2_show(id)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldsV2Api->custom_fields_v2_show: #{e}"
end
```

#### Using the custom_fields_v2_show_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomFieldsShowResultV2>, Integer, Hash)> custom_fields_v2_show_with_http_info(id)

```ruby
begin
  # Show Custom Fields V2
  data, status_code, headers = api_instance.custom_fields_v2_show_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomFieldsShowResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldsV2Api->custom_fields_v2_show_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the custom field |  |

### Return type

[**CustomFieldsShowResultV2**](CustomFieldsShowResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## custom_fields_v2_update

> <CustomFieldsUpdateResultV2> custom_fields_v2_update(id, custom_fields_update_payload_v2)

Update Custom Fields V2

Update the details of a custom field

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CustomFieldsV2Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | Unique identifier for the custom field
custom_fields_update_payload_v2 = IncidentIoSdk::CustomFieldsUpdatePayloadV2.new({description: 'Which team is impacted by this issue', name: 'Affected Team'}) # CustomFieldsUpdatePayloadV2 | 

begin
  # Update Custom Fields V2
  result = api_instance.custom_fields_v2_update(id, custom_fields_update_payload_v2)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldsV2Api->custom_fields_v2_update: #{e}"
end
```

#### Using the custom_fields_v2_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomFieldsUpdateResultV2>, Integer, Hash)> custom_fields_v2_update_with_http_info(id, custom_fields_update_payload_v2)

```ruby
begin
  # Update Custom Fields V2
  data, status_code, headers = api_instance.custom_fields_v2_update_with_http_info(id, custom_fields_update_payload_v2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomFieldsUpdateResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldsV2Api->custom_fields_v2_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the custom field |  |
| **custom_fields_update_payload_v2** | [**CustomFieldsUpdatePayloadV2**](CustomFieldsUpdatePayloadV2.md) |  |  |

### Return type

[**CustomFieldsUpdateResultV2**](CustomFieldsUpdateResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

