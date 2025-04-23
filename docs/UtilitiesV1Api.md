# IncidentIoSdk::UtilitiesV1Api

All URIs are relative to *https://api.incident.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**utilities_v1_identity**](UtilitiesV1Api.md#utilities_v1_identity) | **GET** /v1/identity | Identity Utilities V1 |
| [**utilities_v1_open_api**](UtilitiesV1Api.md#utilities_v1_open_api) | **GET** /v1/openapi.json | OpenAPI Utilities V1 |
| [**utilities_v1_open_apiv3**](UtilitiesV1Api.md#utilities_v1_open_apiv3) | **GET** /v1/openapiV3.json | OpenAPIV3 Utilities V1 |


## utilities_v1_identity

> <UtilitiesIdentityResultV1> utilities_v1_identity

Identity Utilities V1

Test if your API key is valid, and which roles it has.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::UtilitiesV1Api.new

begin
  # Identity Utilities V1
  result = api_instance.utilities_v1_identity
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling UtilitiesV1Api->utilities_v1_identity: #{e}"
end
```

#### Using the utilities_v1_identity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UtilitiesIdentityResultV1>, Integer, Hash)> utilities_v1_identity_with_http_info

```ruby
begin
  # Identity Utilities V1
  data, status_code, headers = api_instance.utilities_v1_identity_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UtilitiesIdentityResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling UtilitiesV1Api->utilities_v1_identity_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**UtilitiesIdentityResultV1**](UtilitiesIdentityResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## utilities_v1_open_api

> File utilities_v1_open_api

OpenAPI Utilities V1

Get the OpenAPI (v2) definition.  **DEPRECATED**: Please use the OpenAPIV3 endpoint instead. The schema returned from this endpoint does not contain new options and endpoints added in 2025 and later.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::UtilitiesV1Api.new

begin
  # OpenAPI Utilities V1
  result = api_instance.utilities_v1_open_api
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling UtilitiesV1Api->utilities_v1_open_api: #{e}"
end
```

#### Using the utilities_v1_open_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> utilities_v1_open_api_with_http_info

```ruby
begin
  # OpenAPI Utilities V1
  data, status_code, headers = api_instance.utilities_v1_open_api_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling UtilitiesV1Api->utilities_v1_open_api_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## utilities_v1_open_apiv3

> File utilities_v1_open_apiv3

OpenAPIV3 Utilities V1

Get the OpenAPI (v3) definition.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::UtilitiesV1Api.new

begin
  # OpenAPIV3 Utilities V1
  result = api_instance.utilities_v1_open_apiv3
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling UtilitiesV1Api->utilities_v1_open_apiv3: #{e}"
end
```

#### Using the utilities_v1_open_apiv3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> utilities_v1_open_apiv3_with_http_info

```ruby
begin
  # OpenAPIV3 Utilities V1
  data, status_code, headers = api_instance.utilities_v1_open_apiv3_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling UtilitiesV1Api->utilities_v1_open_apiv3_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

