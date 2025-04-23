# IncidentIoSdk::FollowUpsV2Api

All URIs are relative to *https://api.incident.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**follow_ups_v2_list**](FollowUpsV2Api.md#follow_ups_v2_list) | **GET** /v2/follow_ups | List Follow-ups V2 |
| [**follow_ups_v2_show**](FollowUpsV2Api.md#follow_ups_v2_show) | **GET** /v2/follow_ups/{id} | Show Follow-ups V2 |


## follow_ups_v2_list

> <FollowUpsListResultV2> follow_ups_v2_list(opts)

List Follow-ups V2

List all follow-ups for an organisation.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::FollowUpsV2Api.new
opts = {
  incident_id: '01FCNDV6P870EA6S7TK1DSYDG0', # String | Find follow-ups related to this incident
  incident_mode: 'standard' # String | Filter to follow-ups from incidents of the given mode. If not set, only follow-ups from `standard` and `retrospective` incidents are returned
}

begin
  # List Follow-ups V2
  result = api_instance.follow_ups_v2_list(opts)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling FollowUpsV2Api->follow_ups_v2_list: #{e}"
end
```

#### Using the follow_ups_v2_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FollowUpsListResultV2>, Integer, Hash)> follow_ups_v2_list_with_http_info(opts)

```ruby
begin
  # List Follow-ups V2
  data, status_code, headers = api_instance.follow_ups_v2_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FollowUpsListResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling FollowUpsV2Api->follow_ups_v2_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_id** | **String** | Find follow-ups related to this incident | [optional] |
| **incident_mode** | **String** | Filter to follow-ups from incidents of the given mode. If not set, only follow-ups from &#x60;standard&#x60; and &#x60;retrospective&#x60; incidents are returned | [optional] |

### Return type

[**FollowUpsListResultV2**](FollowUpsListResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## follow_ups_v2_show

> <FollowUpsShowResultV2> follow_ups_v2_show(id)

Show Follow-ups V2

Get a single incident follow-up.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::FollowUpsV2Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | Unique identifier for the follow-up

begin
  # Show Follow-ups V2
  result = api_instance.follow_ups_v2_show(id)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling FollowUpsV2Api->follow_ups_v2_show: #{e}"
end
```

#### Using the follow_ups_v2_show_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FollowUpsShowResultV2>, Integer, Hash)> follow_ups_v2_show_with_http_info(id)

```ruby
begin
  # Show Follow-ups V2
  data, status_code, headers = api_instance.follow_ups_v2_show_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FollowUpsShowResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling FollowUpsV2Api->follow_ups_v2_show_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the follow-up |  |

### Return type

[**FollowUpsShowResultV2**](FollowUpsShowResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

