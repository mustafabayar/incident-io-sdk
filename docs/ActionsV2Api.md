# IncidentIoSdk::ActionsV2Api

All URIs are relative to *https://api.incident.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**actions_v2_list**](ActionsV2Api.md#actions_v2_list) | **GET** /v2/actions | List Actions V2 |
| [**actions_v2_show**](ActionsV2Api.md#actions_v2_show) | **GET** /v2/actions/{id} | Show Actions V2 |


## actions_v2_list

> <ActionsListResultV2> actions_v2_list(opts)

List Actions V2

List all actions for an organisation.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::ActionsV2Api.new
opts = {
  incident_id: '01FCNDV6P870EA6S7TK1DSYDG0', # String | Find actions related to this incident
  incident_mode: 'standard' # String | Filter to actions from incidents of the given mode. If not set, only actions from `standard` and `retrospective` incidents are returned
}

begin
  # List Actions V2
  result = api_instance.actions_v2_list(opts)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling ActionsV2Api->actions_v2_list: #{e}"
end
```

#### Using the actions_v2_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActionsListResultV2>, Integer, Hash)> actions_v2_list_with_http_info(opts)

```ruby
begin
  # List Actions V2
  data, status_code, headers = api_instance.actions_v2_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActionsListResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling ActionsV2Api->actions_v2_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_id** | **String** | Find actions related to this incident | [optional] |
| **incident_mode** | **String** | Filter to actions from incidents of the given mode. If not set, only actions from &#x60;standard&#x60; and &#x60;retrospective&#x60; incidents are returned | [optional] |

### Return type

[**ActionsListResultV2**](ActionsListResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## actions_v2_show

> <ActionsShowResultV2> actions_v2_show(id)

Show Actions V2

Get a single incident action.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::ActionsV2Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | Unique identifier for the action

begin
  # Show Actions V2
  result = api_instance.actions_v2_show(id)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling ActionsV2Api->actions_v2_show: #{e}"
end
```

#### Using the actions_v2_show_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActionsShowResultV2>, Integer, Hash)> actions_v2_show_with_http_info(id)

```ruby
begin
  # Show Actions V2
  data, status_code, headers = api_instance.actions_v2_show_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActionsShowResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling ActionsV2Api->actions_v2_show_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the action |  |

### Return type

[**ActionsShowResultV2**](ActionsShowResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

