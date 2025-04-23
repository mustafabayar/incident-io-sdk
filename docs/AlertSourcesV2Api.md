# IncidentIoSdk::AlertSourcesV2Api

All URIs are relative to *https://api.incident.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**alert_sources_v2_create**](AlertSourcesV2Api.md#alert_sources_v2_create) | **POST** /v2/alert_sources | Create Alert Sources V2 |
| [**alert_sources_v2_delete**](AlertSourcesV2Api.md#alert_sources_v2_delete) | **DELETE** /v2/alert_sources/{id} | Delete Alert Sources V2 |
| [**alert_sources_v2_list**](AlertSourcesV2Api.md#alert_sources_v2_list) | **GET** /v2/alert_sources | List Alert Sources V2 |
| [**alert_sources_v2_show**](AlertSourcesV2Api.md#alert_sources_v2_show) | **GET** /v2/alert_sources/{id} | Show Alert Sources V2 |
| [**alert_sources_v2_update**](AlertSourcesV2Api.md#alert_sources_v2_update) | **PUT** /v2/alert_sources/{id} | Update Alert Sources V2 |


## alert_sources_v2_create

> <AlertSourcesCreateResultV2> alert_sources_v2_create(alert_sources_create_payload_v2)

Create Alert Sources V2

Create a new alert source in your account.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::AlertSourcesV2Api.new
alert_sources_create_payload_v2 = IncidentIoSdk::AlertSourcesCreatePayloadV2.new({name: 'Production Web Dashboard Alerts', source_type: 'alertmanager', template: IncidentIoSdk::AlertTemplatePayloadV2.new({attributes: [{"alert_attribute_id": "abc123", "binding": {"array_value": [{"literal": "SEV123", "reference": "incident.severity"}], "value": {"literal": "SEV123", "reference": "incident.severity"}}}], description: IncidentIoSdk::EngineParamBindingValuePayloadV2.new, expressions: [{"else_branch": {"result": {"array_value": [{"literal": "SEV123", "reference": "incident.severity"}], "value": {"literal": "SEV123", "reference": "incident.severity"}}}, "label": "Team Slack channel", "operations": [{"branches": {"branches": [{"condition_groups": [{"conditions": [{"operation": "one_of", "param_bindings": [{"array_value": [{"literal": "SEV123", "reference": "incident.severity"}], "value": {"literal": "SEV123", "reference": "incident.severity"}}], "subject": "incident.severity"}]}], "result": {"array_value": [{"literal": "SEV123", "reference": "incident.severity"}], "value": {"literal": "SEV123", "reference": "incident.severity"}}}], "returns": {"array": true, "type": "IncidentStatus"}}, "filter": {"condition_groups": [{"conditions": [{"operation": "one_of", "param_bindings": [{"array_value": [{"literal": "SEV123", "reference": "incident.severity"}], "value": {"literal": "SEV123", "reference": "incident.severity"}}], "subject": "incident.severity"}]}]}, "navigate": {"reference": "catalog_attribute[\"01FCNDV6P870EA6S7TK1DSYD5H\"]"}, "operation_type": "navigate", "parse": {"returns": {"array": true, "type": "IncidentStatus"}, "source": "metadata.annotations[\"github.com/repo\"]"}}], "reference": "abc123", "root_reference": "incident.status"}], title: IncidentIoSdk::EngineParamBindingValuePayloadV2.new})}) # AlertSourcesCreatePayloadV2 | 

begin
  # Create Alert Sources V2
  result = api_instance.alert_sources_v2_create(alert_sources_create_payload_v2)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling AlertSourcesV2Api->alert_sources_v2_create: #{e}"
end
```

#### Using the alert_sources_v2_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AlertSourcesCreateResultV2>, Integer, Hash)> alert_sources_v2_create_with_http_info(alert_sources_create_payload_v2)

```ruby
begin
  # Create Alert Sources V2
  data, status_code, headers = api_instance.alert_sources_v2_create_with_http_info(alert_sources_create_payload_v2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AlertSourcesCreateResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling AlertSourcesV2Api->alert_sources_v2_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alert_sources_create_payload_v2** | [**AlertSourcesCreatePayloadV2**](AlertSourcesCreatePayloadV2.md) |  |  |

### Return type

[**AlertSourcesCreateResultV2**](AlertSourcesCreateResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## alert_sources_v2_delete

> alert_sources_v2_delete(id)

Delete Alert Sources V2

Delete an existing alert source in your account.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::AlertSourcesV2Api.new
id = '01GW2G3V0S59R238FAHPDS1R66' # String | The ID of this alert source

begin
  # Delete Alert Sources V2
  api_instance.alert_sources_v2_delete(id)
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling AlertSourcesV2Api->alert_sources_v2_delete: #{e}"
end
```

#### Using the alert_sources_v2_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> alert_sources_v2_delete_with_http_info(id)

```ruby
begin
  # Delete Alert Sources V2
  data, status_code, headers = api_instance.alert_sources_v2_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling AlertSourcesV2Api->alert_sources_v2_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of this alert source |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## alert_sources_v2_list

> <AlertSourcesListResultV2> alert_sources_v2_list

List Alert Sources V2

List all alert sources in your account.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::AlertSourcesV2Api.new

begin
  # List Alert Sources V2
  result = api_instance.alert_sources_v2_list
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling AlertSourcesV2Api->alert_sources_v2_list: #{e}"
end
```

#### Using the alert_sources_v2_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AlertSourcesListResultV2>, Integer, Hash)> alert_sources_v2_list_with_http_info

```ruby
begin
  # List Alert Sources V2
  data, status_code, headers = api_instance.alert_sources_v2_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AlertSourcesListResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling AlertSourcesV2Api->alert_sources_v2_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AlertSourcesListResultV2**](AlertSourcesListResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## alert_sources_v2_show

> <AlertSourcesShowResultV2> alert_sources_v2_show(id)

Show Alert Sources V2

Load details about a specific alert source in your account.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::AlertSourcesV2Api.new
id = '01GW2G3V0S59R238FAHPDS1R66' # String | The ID of this alert source

begin
  # Show Alert Sources V2
  result = api_instance.alert_sources_v2_show(id)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling AlertSourcesV2Api->alert_sources_v2_show: #{e}"
end
```

#### Using the alert_sources_v2_show_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AlertSourcesShowResultV2>, Integer, Hash)> alert_sources_v2_show_with_http_info(id)

```ruby
begin
  # Show Alert Sources V2
  data, status_code, headers = api_instance.alert_sources_v2_show_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AlertSourcesShowResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling AlertSourcesV2Api->alert_sources_v2_show_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of this alert source |  |

### Return type

[**AlertSourcesShowResultV2**](AlertSourcesShowResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## alert_sources_v2_update

> <AlertSourcesUpdateResultV2> alert_sources_v2_update(id, alert_sources_update_payload_v2)

Update Alert Sources V2

Update an existing alert source in your account.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::AlertSourcesV2Api.new
id = '01GW2G3V0S59R238FAHPDS1R66' # String | The ID of this alert source
alert_sources_update_payload_v2 = IncidentIoSdk::AlertSourcesUpdatePayloadV2.new({name: 'Production Web Dashboard Alerts', template: IncidentIoSdk::AlertTemplatePayloadV2.new({attributes: [{"alert_attribute_id": "abc123", "binding": {"array_value": [{"literal": "SEV123", "reference": "incident.severity"}], "value": {"literal": "SEV123", "reference": "incident.severity"}}}], description: IncidentIoSdk::EngineParamBindingValuePayloadV2.new, expressions: [{"else_branch": {"result": {"array_value": [{"literal": "SEV123", "reference": "incident.severity"}], "value": {"literal": "SEV123", "reference": "incident.severity"}}}, "label": "Team Slack channel", "operations": [{"branches": {"branches": [{"condition_groups": [{"conditions": [{"operation": "one_of", "param_bindings": [{"array_value": [{"literal": "SEV123", "reference": "incident.severity"}], "value": {"literal": "SEV123", "reference": "incident.severity"}}], "subject": "incident.severity"}]}], "result": {"array_value": [{"literal": "SEV123", "reference": "incident.severity"}], "value": {"literal": "SEV123", "reference": "incident.severity"}}}], "returns": {"array": true, "type": "IncidentStatus"}}, "filter": {"condition_groups": [{"conditions": [{"operation": "one_of", "param_bindings": [{"array_value": [{"literal": "SEV123", "reference": "incident.severity"}], "value": {"literal": "SEV123", "reference": "incident.severity"}}], "subject": "incident.severity"}]}]}, "navigate": {"reference": "catalog_attribute[\"01FCNDV6P870EA6S7TK1DSYD5H\"]"}, "operation_type": "navigate", "parse": {"returns": {"array": true, "type": "IncidentStatus"}, "source": "metadata.annotations[\"github.com/repo\"]"}}], "reference": "abc123", "root_reference": "incident.status"}], title: IncidentIoSdk::EngineParamBindingValuePayloadV2.new})}) # AlertSourcesUpdatePayloadV2 | 

begin
  # Update Alert Sources V2
  result = api_instance.alert_sources_v2_update(id, alert_sources_update_payload_v2)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling AlertSourcesV2Api->alert_sources_v2_update: #{e}"
end
```

#### Using the alert_sources_v2_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AlertSourcesUpdateResultV2>, Integer, Hash)> alert_sources_v2_update_with_http_info(id, alert_sources_update_payload_v2)

```ruby
begin
  # Update Alert Sources V2
  data, status_code, headers = api_instance.alert_sources_v2_update_with_http_info(id, alert_sources_update_payload_v2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AlertSourcesUpdateResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling AlertSourcesV2Api->alert_sources_v2_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of this alert source |  |
| **alert_sources_update_payload_v2** | [**AlertSourcesUpdatePayloadV2**](AlertSourcesUpdatePayloadV2.md) |  |  |

### Return type

[**AlertSourcesUpdateResultV2**](AlertSourcesUpdateResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

