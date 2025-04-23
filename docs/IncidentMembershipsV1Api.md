# IncidentIoSdk::IncidentMembershipsV1Api

All URIs are relative to *https://api.incident.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**incident_memberships_v1_create**](IncidentMembershipsV1Api.md#incident_memberships_v1_create) | **POST** /v1/incident_memberships | Create Incident Memberships V1 |
| [**incident_memberships_v1_revoke**](IncidentMembershipsV1Api.md#incident_memberships_v1_revoke) | **POST** /v1/incident_memberships/actions/revoke | Revoke Incident Memberships V1 |


## incident_memberships_v1_create

> <IncidentMembershipsCreateResultV1> incident_memberships_v1_create(incident_memberships_create_payload_v1)

Create Incident Memberships V1

Makes a user a member of a private incident

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentMembershipsV1Api.new
incident_memberships_create_payload_v1 = IncidentIoSdk::IncidentMembershipsCreatePayloadV1.new({incident_id: '01ET65M7ZADYFCKD4K1AE2QNMC', user_id: '01FCQSP07Z74QMMYPDDGQB9FTG'}) # IncidentMembershipsCreatePayloadV1 | 

begin
  # Create Incident Memberships V1
  result = api_instance.incident_memberships_v1_create(incident_memberships_create_payload_v1)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentMembershipsV1Api->incident_memberships_v1_create: #{e}"
end
```

#### Using the incident_memberships_v1_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentMembershipsCreateResultV1>, Integer, Hash)> incident_memberships_v1_create_with_http_info(incident_memberships_create_payload_v1)

```ruby
begin
  # Create Incident Memberships V1
  data, status_code, headers = api_instance.incident_memberships_v1_create_with_http_info(incident_memberships_create_payload_v1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentMembershipsCreateResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentMembershipsV1Api->incident_memberships_v1_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_memberships_create_payload_v1** | [**IncidentMembershipsCreatePayloadV1**](IncidentMembershipsCreatePayloadV1.md) |  |  |

### Return type

[**IncidentMembershipsCreateResultV1**](IncidentMembershipsCreateResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## incident_memberships_v1_revoke

> incident_memberships_v1_revoke(incident_memberships_revoke_payload_v1)

Revoke Incident Memberships V1

Revoke a user's membership of a private incident

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentMembershipsV1Api.new
incident_memberships_revoke_payload_v1 = IncidentIoSdk::IncidentMembershipsRevokePayloadV1.new({incident_id: '01FCNDV6P870EA6S7TK1DSYD5H', user_id: '01FCQSP07Z74QMMYPDDGQB9FTG'}) # IncidentMembershipsRevokePayloadV1 | 

begin
  # Revoke Incident Memberships V1
  api_instance.incident_memberships_v1_revoke(incident_memberships_revoke_payload_v1)
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentMembershipsV1Api->incident_memberships_v1_revoke: #{e}"
end
```

#### Using the incident_memberships_v1_revoke_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> incident_memberships_v1_revoke_with_http_info(incident_memberships_revoke_payload_v1)

```ruby
begin
  # Revoke Incident Memberships V1
  data, status_code, headers = api_instance.incident_memberships_v1_revoke_with_http_info(incident_memberships_revoke_payload_v1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentMembershipsV1Api->incident_memberships_v1_revoke_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_memberships_revoke_payload_v1** | [**IncidentMembershipsRevokePayloadV1**](IncidentMembershipsRevokePayloadV1.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

