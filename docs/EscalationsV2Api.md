# IncidentIoSdk::EscalationsV2Api

All URIs are relative to *https://api.incident.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**escalations_v2_create_path**](EscalationsV2Api.md#escalations_v2_create_path) | **POST** /v2/escalation_paths | CreatePath Escalations V2 |
| [**escalations_v2_destroy_path**](EscalationsV2Api.md#escalations_v2_destroy_path) | **DELETE** /v2/escalation_paths/{id} | DestroyPath Escalations V2 |
| [**escalations_v2_show_path**](EscalationsV2Api.md#escalations_v2_show_path) | **GET** /v2/escalation_paths/{id} | ShowPath Escalations V2 |
| [**escalations_v2_update_path**](EscalationsV2Api.md#escalations_v2_update_path) | **PUT** /v2/escalation_paths/{id} | UpdatePath Escalations V2 |


## escalations_v2_create_path

> <EscalationsCreatePathResultV2> escalations_v2_create_path(escalations_create_path_payload_v2)

CreatePath Escalations V2

Create an escalation path.  An escalation path is a series of steps that describe how a page should be escalated, represented as graph, supporting conditional branches based on alert priority and working intervals.  We recommend you create escalation paths in the incident.io dashboard where our path builder makes it easy to use conditions and visualise the path. 

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::EscalationsV2Api.new
escalations_create_path_payload_v2 = IncidentIoSdk::EscalationsCreatePathPayloadV2.new({name: 'Urgent Support', path: [{"id": "01FCNDV6P870EA6S7TK1DSYDG0", "if_else": {"conditions": [{"operation": "one_of", "param_bindings": [{"array_value": [{"literal": "SEV123", "reference": "incident.severity"}], "value": {"literal": "SEV123", "reference": "incident.severity"}}], "subject": "incident.severity"}], "else_path": [{}], "then_path": [{}]}, "level": {"round_robin_config": {"enabled": false, "rotate_after_seconds": 120}, "targets": [{"id": "lawrencejones", "schedule_mode": "currently_on_call", "type": "user", "urgency": "high"}], "time_to_ack_interval_condition": "active", "time_to_ack_seconds": 1800, "time_to_ack_weekday_interval_config_id": "01FCNDV6P870EA6S7TK1DSYDG0"}, "notify_channel": {"targets": [{"id": "lawrencejones", "schedule_mode": "currently_on_call", "type": "user", "urgency": "high"}], "time_to_ack_interval_condition": "active", "time_to_ack_seconds": 1800, "time_to_ack_weekday_interval_config_id": "01FCNDV6P870EA6S7TK1DSYDG0"}, "repeat": {"repeat_times": 3, "to_node": "01FCNDV6P870EA6S7TK1DSYDG0"}, "type": "if_else"}]}) # EscalationsCreatePathPayloadV2 | 

begin
  # CreatePath Escalations V2
  result = api_instance.escalations_v2_create_path(escalations_create_path_payload_v2)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling EscalationsV2Api->escalations_v2_create_path: #{e}"
end
```

#### Using the escalations_v2_create_path_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EscalationsCreatePathResultV2>, Integer, Hash)> escalations_v2_create_path_with_http_info(escalations_create_path_payload_v2)

```ruby
begin
  # CreatePath Escalations V2
  data, status_code, headers = api_instance.escalations_v2_create_path_with_http_info(escalations_create_path_payload_v2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EscalationsCreatePathResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling EscalationsV2Api->escalations_v2_create_path_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **escalations_create_path_payload_v2** | [**EscalationsCreatePathPayloadV2**](EscalationsCreatePathPayloadV2.md) |  |  |

### Return type

[**EscalationsCreatePathResultV2**](EscalationsCreatePathResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## escalations_v2_destroy_path

> escalations_v2_destroy_path(id)

DestroyPath Escalations V2

Archives an escalation path.  We recommend you create escalation paths in the incident.io dashboard where our path builder makes it easy to use conditions and visualise the path. 

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::EscalationsV2Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | Unique identifier for this escalation path.

begin
  # DestroyPath Escalations V2
  api_instance.escalations_v2_destroy_path(id)
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling EscalationsV2Api->escalations_v2_destroy_path: #{e}"
end
```

#### Using the escalations_v2_destroy_path_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> escalations_v2_destroy_path_with_http_info(id)

```ruby
begin
  # DestroyPath Escalations V2
  data, status_code, headers = api_instance.escalations_v2_destroy_path_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling EscalationsV2Api->escalations_v2_destroy_path_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for this escalation path. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## escalations_v2_show_path

> <EscalationsShowPathResultV2> escalations_v2_show_path(id)

ShowPath Escalations V2

Show an escalation path.  We recommend you create escalation paths in the incident.io dashboard where our path builder makes it easy to use conditions and visualise the path. 

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::EscalationsV2Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | Unique identifier for this escalation path.

begin
  # ShowPath Escalations V2
  result = api_instance.escalations_v2_show_path(id)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling EscalationsV2Api->escalations_v2_show_path: #{e}"
end
```

#### Using the escalations_v2_show_path_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EscalationsShowPathResultV2>, Integer, Hash)> escalations_v2_show_path_with_http_info(id)

```ruby
begin
  # ShowPath Escalations V2
  data, status_code, headers = api_instance.escalations_v2_show_path_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EscalationsShowPathResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling EscalationsV2Api->escalations_v2_show_path_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for this escalation path. |  |

### Return type

[**EscalationsShowPathResultV2**](EscalationsShowPathResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## escalations_v2_update_path

> <EscalationsUpdatePathResultV2> escalations_v2_update_path(id, escalations_update_path_payload_v2)

UpdatePath Escalations V2

Updates an escalation path.  We recommend you create escalation paths in the incident.io dashboard where our path builder makes it easy to use conditions and visualise the path. 

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::EscalationsV2Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | Unique identifier for this escalation path.
escalations_update_path_payload_v2 = IncidentIoSdk::EscalationsUpdatePathPayloadV2.new({name: 'Urgent Support', path: [{"id": "01FCNDV6P870EA6S7TK1DSYDG0", "if_else": {"conditions": [{"operation": "one_of", "param_bindings": [{"array_value": [{"literal": "SEV123", "reference": "incident.severity"}], "value": {"literal": "SEV123", "reference": "incident.severity"}}], "subject": "incident.severity"}], "else_path": [{}], "then_path": [{}]}, "level": {"round_robin_config": {"enabled": false, "rotate_after_seconds": 120}, "targets": [{"id": "lawrencejones", "schedule_mode": "currently_on_call", "type": "user", "urgency": "high"}], "time_to_ack_interval_condition": "active", "time_to_ack_seconds": 1800, "time_to_ack_weekday_interval_config_id": "01FCNDV6P870EA6S7TK1DSYDG0"}, "notify_channel": {"targets": [{"id": "lawrencejones", "schedule_mode": "currently_on_call", "type": "user", "urgency": "high"}], "time_to_ack_interval_condition": "active", "time_to_ack_seconds": 1800, "time_to_ack_weekday_interval_config_id": "01FCNDV6P870EA6S7TK1DSYDG0"}, "repeat": {"repeat_times": 3, "to_node": "01FCNDV6P870EA6S7TK1DSYDG0"}, "type": "if_else"}]}) # EscalationsUpdatePathPayloadV2 | 

begin
  # UpdatePath Escalations V2
  result = api_instance.escalations_v2_update_path(id, escalations_update_path_payload_v2)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling EscalationsV2Api->escalations_v2_update_path: #{e}"
end
```

#### Using the escalations_v2_update_path_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EscalationsUpdatePathResultV2>, Integer, Hash)> escalations_v2_update_path_with_http_info(id, escalations_update_path_payload_v2)

```ruby
begin
  # UpdatePath Escalations V2
  data, status_code, headers = api_instance.escalations_v2_update_path_with_http_info(id, escalations_update_path_payload_v2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EscalationsUpdatePathResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling EscalationsV2Api->escalations_v2_update_path_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for this escalation path. |  |
| **escalations_update_path_payload_v2** | [**EscalationsUpdatePathPayloadV2**](EscalationsUpdatePathPayloadV2.md) |  |  |

### Return type

[**EscalationsUpdatePathResultV2**](EscalationsUpdatePathResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

