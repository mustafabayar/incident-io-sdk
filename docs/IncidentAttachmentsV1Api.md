# IncidentIoSdk::IncidentAttachmentsV1Api

All URIs are relative to *https://api.incident.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**incident_attachments_v1_create**](IncidentAttachmentsV1Api.md#incident_attachments_v1_create) | **POST** /v1/incident_attachments | Create Incident Attachments V1 |
| [**incident_attachments_v1_delete**](IncidentAttachmentsV1Api.md#incident_attachments_v1_delete) | **DELETE** /v1/incident_attachments/{id} | Delete Incident Attachments V1 |
| [**incident_attachments_v1_list**](IncidentAttachmentsV1Api.md#incident_attachments_v1_list) | **GET** /v1/incident_attachments | List Incident Attachments V1 |


## incident_attachments_v1_create

> <IncidentAttachmentsCreateResultV1> incident_attachments_v1_create(incident_attachments_create_payload_v1)

Create Incident Attachments V1

Attaches an external resource to an incident

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentAttachmentsV1Api.new
incident_attachments_create_payload_v1 = IncidentIoSdk::IncidentAttachmentsCreatePayloadV1.new({incident_id: '01FDAG4SAP5TYPT98WGR2N7W91', resource: IncidentIoSdk::IncidentAttachmentsCreatePayloadV1Resource.new({external_id: '123', resource_type: 'pager_duty_incident'})}) # IncidentAttachmentsCreatePayloadV1 | 

begin
  # Create Incident Attachments V1
  result = api_instance.incident_attachments_v1_create(incident_attachments_create_payload_v1)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentAttachmentsV1Api->incident_attachments_v1_create: #{e}"
end
```

#### Using the incident_attachments_v1_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentAttachmentsCreateResultV1>, Integer, Hash)> incident_attachments_v1_create_with_http_info(incident_attachments_create_payload_v1)

```ruby
begin
  # Create Incident Attachments V1
  data, status_code, headers = api_instance.incident_attachments_v1_create_with_http_info(incident_attachments_create_payload_v1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentAttachmentsCreateResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentAttachmentsV1Api->incident_attachments_v1_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_attachments_create_payload_v1** | [**IncidentAttachmentsCreatePayloadV1**](IncidentAttachmentsCreatePayloadV1.md) |  |  |

### Return type

[**IncidentAttachmentsCreateResultV1**](IncidentAttachmentsCreateResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## incident_attachments_v1_delete

> incident_attachments_v1_delete(id)

Delete Incident Attachments V1

Unattaches an external resource from an incident

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentAttachmentsV1Api.new
id = '01FCNDV6P870EA6S7TK1DSYD5H' # String | Unique identifier of this incident membership

begin
  # Delete Incident Attachments V1
  api_instance.incident_attachments_v1_delete(id)
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentAttachmentsV1Api->incident_attachments_v1_delete: #{e}"
end
```

#### Using the incident_attachments_v1_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> incident_attachments_v1_delete_with_http_info(id)

```ruby
begin
  # Delete Incident Attachments V1
  data, status_code, headers = api_instance.incident_attachments_v1_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentAttachmentsV1Api->incident_attachments_v1_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of this incident membership |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## incident_attachments_v1_list

> <IncidentAttachmentsListResultV1> incident_attachments_v1_list(opts)

List Incident Attachments V1

List all incident attachments for a given external resource or incident. You must provide either a specific incident ID or a specific external resource type and external ID.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentAttachmentsV1Api.new
opts = {
  incident_id: '01G0J1EXE7AXZ2C93K61WBPYEH', # String | Incident that this attachment is against
  external_id: '123', # String | ID of the resource in the external system
  resource_type: 'pager_duty_incident' # String | E.g. PagerDuty: the external system that holds the resource
}

begin
  # List Incident Attachments V1
  result = api_instance.incident_attachments_v1_list(opts)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentAttachmentsV1Api->incident_attachments_v1_list: #{e}"
end
```

#### Using the incident_attachments_v1_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentAttachmentsListResultV1>, Integer, Hash)> incident_attachments_v1_list_with_http_info(opts)

```ruby
begin
  # List Incident Attachments V1
  data, status_code, headers = api_instance.incident_attachments_v1_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentAttachmentsListResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentAttachmentsV1Api->incident_attachments_v1_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_id** | **String** | Incident that this attachment is against | [optional] |
| **external_id** | **String** | ID of the resource in the external system | [optional] |
| **resource_type** | **String** | E.g. PagerDuty: the external system that holds the resource | [optional] |

### Return type

[**IncidentAttachmentsListResultV1**](IncidentAttachmentsListResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

