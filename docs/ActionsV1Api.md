# IncidentIoSdk::ActionsV1Api

All URIs are relative to *https://api.incident.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**actions_v1_list**](ActionsV1Api.md#actions_v1_list) | **GET** /v1/actions | List Actions V1 |
| [**actions_v1_show**](ActionsV1Api.md#actions_v1_show) | **GET** /v1/actions/{id} | Show Actions V1 |


## actions_v1_list

> <ActionsListResultV1> actions_v1_list(opts)

List Actions V1

List all actions for an organisation.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::ActionsV1Api.new
opts = {
  incident_id: '01FCNDV6P870EA6S7TK1DSYDG0', # String | Find actions related to this incident
  is_follow_up: true, # Boolean | Filter to actions marked as being follow up actions
  incident_mode: 'real' # String | Filter to actions from incidents of the given mode. If not set, only actions from `real` incidents are returned
}

begin
  # List Actions V1
  result = api_instance.actions_v1_list(opts)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling ActionsV1Api->actions_v1_list: #{e}"
end
```

#### Using the actions_v1_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActionsListResultV1>, Integer, Hash)> actions_v1_list_with_http_info(opts)

```ruby
begin
  # List Actions V1
  data, status_code, headers = api_instance.actions_v1_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActionsListResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling ActionsV1Api->actions_v1_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_id** | **String** | Find actions related to this incident | [optional] |
| **is_follow_up** | **Boolean** | Filter to actions marked as being follow up actions | [optional] |
| **incident_mode** | **String** | Filter to actions from incidents of the given mode. If not set, only actions from &#x60;real&#x60; incidents are returned | [optional] |

### Return type

[**ActionsListResultV1**](ActionsListResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## actions_v1_show

> <ActionsShowResultV1> actions_v1_show(id)

Show Actions V1

Get a single incident action.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::ActionsV1Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | Unique identifier for the action

begin
  # Show Actions V1
  result = api_instance.actions_v1_show(id)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling ActionsV1Api->actions_v1_show: #{e}"
end
```

#### Using the actions_v1_show_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActionsShowResultV1>, Integer, Hash)> actions_v1_show_with_http_info(id)

```ruby
begin
  # Show Actions V1
  data, status_code, headers = api_instance.actions_v1_show_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActionsShowResultV1>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling ActionsV1Api->actions_v1_show_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the action |  |

### Return type

[**ActionsShowResultV1**](ActionsShowResultV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

