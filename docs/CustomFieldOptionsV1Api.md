# IncidentIoSdk::CustomFieldOptionsV1Api

All URIs are relative to *https://api.incident.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**custom_field_options_v1_create**](CustomFieldOptionsV1Api.md#custom_field_options_v1_create) | **POST** /v1/custom_field_options | Create Custom Field Options V1 |
| [**custom_field_options_v1_delete**](CustomFieldOptionsV1Api.md#custom_field_options_v1_delete) | **DELETE** /v1/custom_field_options/{id} | Delete Custom Field Options V1 |
| [**custom_field_options_v1_list**](CustomFieldOptionsV1Api.md#custom_field_options_v1_list) | **GET** /v1/custom_field_options | List Custom Field Options V1 |
| [**custom_field_options_v1_show**](CustomFieldOptionsV1Api.md#custom_field_options_v1_show) | **GET** /v1/custom_field_options/{id} | Show Custom Field Options V1 |
| [**custom_field_options_v1_update**](CustomFieldOptionsV1Api.md#custom_field_options_v1_update) | **PUT** /v1/custom_field_options/{id} | Update Custom Field Options V1 |


## custom_field_options_v1_create

> <CustomFieldOptionsCreateResultV1> custom_field_options_v1_create(custom_field_options_create_payload_v1)

Create Custom Field Options V1

Create a custom field option. If the sort key is not supplied, it'll default to 1000, so the option appears near the end of the list.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CustomFieldOptionsV1Api.new
custom_field_options_create_payload_v1 = IncidentIoSdk::CustomFieldOptionsCreatePayloadV1.new({custom_field_id: '01FCNDV6P870EA6S7TK1DSYDG0', value: 'Product'}) # CustomFieldOptionsCreatePayloadV1 | 

begin
  # Create Custom Field Options V1
  result = api_instance.custom_field_options_v1_create(custom_field_options_create_payload_v1)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldOptionsV1Api->custom_field_options_v1_create: #{e}"
end
```

#### Using the custom_field_options_v1_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomFieldOptionsCreateResultV1>, Integer, Hash)> custom_field_options_v1_create_with_http_info(custom_field_options_create_payload_v1)

```ruby
begin
  # Create Custom Field Options V1
  data, status_code, headers = api_instance.custom_field_options_v1_create_with_http_info(custom_field_options_create_payload_v1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomFieldOptionsCreateResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldOptionsV1Api->custom_field_options_v1_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_field_options_create_payload_v1** | [**CustomFieldOptionsCreatePayloadV1**](CustomFieldOptionsCreatePayloadV1.md) |  |  |

### Return type

[**CustomFieldOptionsCreateResultV1**](CustomFieldOptionsCreateResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## custom_field_options_v1_delete

> custom_field_options_v1_delete(id)

Delete Custom Field Options V1

Delete a custom field option

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CustomFieldOptionsV1Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | Unique identifier for the custom field option

begin
  # Delete Custom Field Options V1
  api_instance.custom_field_options_v1_delete(id)
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldOptionsV1Api->custom_field_options_v1_delete: #{e}"
end
```

#### Using the custom_field_options_v1_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> custom_field_options_v1_delete_with_http_info(id)

```ruby
begin
  # Delete Custom Field Options V1
  data, status_code, headers = api_instance.custom_field_options_v1_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldOptionsV1Api->custom_field_options_v1_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the custom field option |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## custom_field_options_v1_list

> <CustomFieldOptionsListResultV1> custom_field_options_v1_list(custom_field_id, opts)

List Custom Field Options V1

Show custom field options for a custom field

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CustomFieldOptionsV1Api.new
custom_field_id = '01FCNDV6P870EA6S7TK1DSYD5H' # String | The custom field to list options for.
opts = {
  page_size: 25, # Integer | number of records to return
  after: '01G0J1EXE7AXZ2C93K61WBPYEH' # String | A custom field option's ID. This endpoint will return a list of custom field options created after this option.
}

begin
  # List Custom Field Options V1
  result = api_instance.custom_field_options_v1_list(custom_field_id, opts)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldOptionsV1Api->custom_field_options_v1_list: #{e}"
end
```

#### Using the custom_field_options_v1_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomFieldOptionsListResultV1>, Integer, Hash)> custom_field_options_v1_list_with_http_info(custom_field_id, opts)

```ruby
begin
  # List Custom Field Options V1
  data, status_code, headers = api_instance.custom_field_options_v1_list_with_http_info(custom_field_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomFieldOptionsListResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldOptionsV1Api->custom_field_options_v1_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_field_id** | **String** | The custom field to list options for. |  |
| **page_size** | **Integer** | number of records to return | [optional][default to 25] |
| **after** | **String** | A custom field option&#39;s ID. This endpoint will return a list of custom field options created after this option. | [optional] |

### Return type

[**CustomFieldOptionsListResultV1**](CustomFieldOptionsListResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## custom_field_options_v1_show

> <CustomFieldOptionsShowResultV1> custom_field_options_v1_show(id)

Show Custom Field Options V1

Get a single custom field option

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CustomFieldOptionsV1Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | Unique identifier for the custom field option

begin
  # Show Custom Field Options V1
  result = api_instance.custom_field_options_v1_show(id)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldOptionsV1Api->custom_field_options_v1_show: #{e}"
end
```

#### Using the custom_field_options_v1_show_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomFieldOptionsShowResultV1>, Integer, Hash)> custom_field_options_v1_show_with_http_info(id)

```ruby
begin
  # Show Custom Field Options V1
  data, status_code, headers = api_instance.custom_field_options_v1_show_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomFieldOptionsShowResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldOptionsV1Api->custom_field_options_v1_show_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the custom field option |  |

### Return type

[**CustomFieldOptionsShowResultV1**](CustomFieldOptionsShowResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## custom_field_options_v1_update

> <CustomFieldOptionsUpdateResultV1> custom_field_options_v1_update(id, custom_field_options_update_payload_v1)

Update Custom Field Options V1

Update a custom field option

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CustomFieldOptionsV1Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | Unique identifier for the custom field option
custom_field_options_update_payload_v1 = IncidentIoSdk::CustomFieldOptionsUpdatePayloadV1.new({sort_key: 10, value: 'Product'}) # CustomFieldOptionsUpdatePayloadV1 | 

begin
  # Update Custom Field Options V1
  result = api_instance.custom_field_options_v1_update(id, custom_field_options_update_payload_v1)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldOptionsV1Api->custom_field_options_v1_update: #{e}"
end
```

#### Using the custom_field_options_v1_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomFieldOptionsUpdateResultV1>, Integer, Hash)> custom_field_options_v1_update_with_http_info(id, custom_field_options_update_payload_v1)

```ruby
begin
  # Update Custom Field Options V1
  data, status_code, headers = api_instance.custom_field_options_v1_update_with_http_info(id, custom_field_options_update_payload_v1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomFieldOptionsUpdateResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CustomFieldOptionsV1Api->custom_field_options_v1_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the custom field option |  |
| **custom_field_options_update_payload_v1** | [**CustomFieldOptionsUpdatePayloadV1**](CustomFieldOptionsUpdatePayloadV1.md) |  |  |

### Return type

[**CustomFieldOptionsUpdateResultV1**](CustomFieldOptionsUpdateResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

