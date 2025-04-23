# IncidentIoSdk::AlertAttributesV2Api

All URIs are relative to *https://api.incident.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**alert_attributes_v2_create**](AlertAttributesV2Api.md#alert_attributes_v2_create) | **POST** /v2/alert_attributes | Create Alert Attributes V2 |
| [**alert_attributes_v2_destroy**](AlertAttributesV2Api.md#alert_attributes_v2_destroy) | **DELETE** /v2/alert_attributes/{id} | Destroy Alert Attributes V2 |
| [**alert_attributes_v2_list**](AlertAttributesV2Api.md#alert_attributes_v2_list) | **GET** /v2/alert_attributes | List Alert Attributes V2 |
| [**alert_attributes_v2_show**](AlertAttributesV2Api.md#alert_attributes_v2_show) | **GET** /v2/alert_attributes/{id} | Show Alert Attributes V2 |
| [**alert_attributes_v2_update**](AlertAttributesV2Api.md#alert_attributes_v2_update) | **PUT** /v2/alert_attributes/{id} | Update Alert Attributes V2 |


## alert_attributes_v2_create

> <AlertAttributesCreateResultV2> alert_attributes_v2_create(alert_attributes_create_payload_v2)

Create Alert Attributes V2

Create a new alert attribute.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::AlertAttributesV2Api.new
alert_attributes_create_payload_v2 = IncidentIoSdk::AlertAttributesCreatePayloadV2.new({array: false, name: 'service', type: 'CatalogEntry["01GW2G3V0S59R238FAHPDS1R67"]'}) # AlertAttributesCreatePayloadV2 | 

begin
  # Create Alert Attributes V2
  result = api_instance.alert_attributes_v2_create(alert_attributes_create_payload_v2)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling AlertAttributesV2Api->alert_attributes_v2_create: #{e}"
end
```

#### Using the alert_attributes_v2_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AlertAttributesCreateResultV2>, Integer, Hash)> alert_attributes_v2_create_with_http_info(alert_attributes_create_payload_v2)

```ruby
begin
  # Create Alert Attributes V2
  data, status_code, headers = api_instance.alert_attributes_v2_create_with_http_info(alert_attributes_create_payload_v2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AlertAttributesCreateResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling AlertAttributesV2Api->alert_attributes_v2_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alert_attributes_create_payload_v2** | [**AlertAttributesCreatePayloadV2**](AlertAttributesCreatePayloadV2.md) |  |  |

### Return type

[**AlertAttributesCreateResultV2**](AlertAttributesCreateResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## alert_attributes_v2_destroy

> alert_attributes_v2_destroy(id)

Destroy Alert Attributes V2

Destroy an alert attribute.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::AlertAttributesV2Api.new
id = '01GW2G3V0S59R238FAHPDS1R66' # String | The ID of this attribute

begin
  # Destroy Alert Attributes V2
  api_instance.alert_attributes_v2_destroy(id)
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling AlertAttributesV2Api->alert_attributes_v2_destroy: #{e}"
end
```

#### Using the alert_attributes_v2_destroy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> alert_attributes_v2_destroy_with_http_info(id)

```ruby
begin
  # Destroy Alert Attributes V2
  data, status_code, headers = api_instance.alert_attributes_v2_destroy_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling AlertAttributesV2Api->alert_attributes_v2_destroy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of this attribute |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## alert_attributes_v2_list

> <AlertAttributesListResultV2> alert_attributes_v2_list

List Alert Attributes V2

List alert attributes.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::AlertAttributesV2Api.new

begin
  # List Alert Attributes V2
  result = api_instance.alert_attributes_v2_list
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling AlertAttributesV2Api->alert_attributes_v2_list: #{e}"
end
```

#### Using the alert_attributes_v2_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AlertAttributesListResultV2>, Integer, Hash)> alert_attributes_v2_list_with_http_info

```ruby
begin
  # List Alert Attributes V2
  data, status_code, headers = api_instance.alert_attributes_v2_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AlertAttributesListResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling AlertAttributesV2Api->alert_attributes_v2_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AlertAttributesListResultV2**](AlertAttributesListResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## alert_attributes_v2_show

> <AlertAttributesShowResultV2> alert_attributes_v2_show(id)

Show Alert Attributes V2

Show an alert attribute.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::AlertAttributesV2Api.new
id = '01GW2G3V0S59R238FAHPDS1R66' # String | The ID of this attribute

begin
  # Show Alert Attributes V2
  result = api_instance.alert_attributes_v2_show(id)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling AlertAttributesV2Api->alert_attributes_v2_show: #{e}"
end
```

#### Using the alert_attributes_v2_show_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AlertAttributesShowResultV2>, Integer, Hash)> alert_attributes_v2_show_with_http_info(id)

```ruby
begin
  # Show Alert Attributes V2
  data, status_code, headers = api_instance.alert_attributes_v2_show_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AlertAttributesShowResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling AlertAttributesV2Api->alert_attributes_v2_show_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of this attribute |  |

### Return type

[**AlertAttributesShowResultV2**](AlertAttributesShowResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## alert_attributes_v2_update

> <AlertAttributesUpdateResultV2> alert_attributes_v2_update(id, alert_attributes_update_payload_v2)

Update Alert Attributes V2

Update an alert attribute.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::AlertAttributesV2Api.new
id = '01GW2G3V0S59R238FAHPDS1R66' # String | The ID of this attribute
alert_attributes_update_payload_v2 = IncidentIoSdk::AlertAttributesUpdatePayloadV2.new({array: false, name: 'service', type: 'CatalogEntry["01GW2G3V0S59R238FAHPDS1R67"]'}) # AlertAttributesUpdatePayloadV2 | 

begin
  # Update Alert Attributes V2
  result = api_instance.alert_attributes_v2_update(id, alert_attributes_update_payload_v2)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling AlertAttributesV2Api->alert_attributes_v2_update: #{e}"
end
```

#### Using the alert_attributes_v2_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AlertAttributesUpdateResultV2>, Integer, Hash)> alert_attributes_v2_update_with_http_info(id, alert_attributes_update_payload_v2)

```ruby
begin
  # Update Alert Attributes V2
  data, status_code, headers = api_instance.alert_attributes_v2_update_with_http_info(id, alert_attributes_update_payload_v2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AlertAttributesUpdateResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling AlertAttributesV2Api->alert_attributes_v2_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of this attribute |  |
| **alert_attributes_update_payload_v2** | [**AlertAttributesUpdatePayloadV2**](AlertAttributesUpdatePayloadV2.md) |  |  |

### Return type

[**AlertAttributesUpdateResultV2**](AlertAttributesUpdateResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

