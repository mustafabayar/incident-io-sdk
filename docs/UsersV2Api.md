# IncidentIoSdk::UsersV2Api

All URIs are relative to *https://api.incident.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**users_v2_list**](UsersV2Api.md#users_v2_list) | **GET** /v2/users | List Users V2 |
| [**users_v2_show**](UsersV2Api.md#users_v2_show) | **GET** /v2/users/{id} | Show Users V2 |


## users_v2_list

> <UsersListResultV2> users_v2_list(opts)

List Users V2

List users in your account.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::UsersV2Api.new
opts = {
  email: 'john.doe@incident.io', # String | Filter by email address
  slack_user_id: 'U12345678', # String | Filter by Slack user ID
  page_size: 25, # Integer | Integer number of records to return
  after: '01FDAG4SAP5TYPT98WGR2N7W91' # String | An record's ID. This endpoint will return a list of records after this ID in relation to the API response order.
}

begin
  # List Users V2
  result = api_instance.users_v2_list(opts)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling UsersV2Api->users_v2_list: #{e}"
end
```

#### Using the users_v2_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersListResultV2>, Integer, Hash)> users_v2_list_with_http_info(opts)

```ruby
begin
  # List Users V2
  data, status_code, headers = api_instance.users_v2_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersListResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling UsersV2Api->users_v2_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Filter by email address | [optional] |
| **slack_user_id** | **String** | Filter by Slack user ID | [optional] |
| **page_size** | **Integer** | Integer number of records to return | [optional][default to 25] |
| **after** | **String** | An record&#39;s ID. This endpoint will return a list of records after this ID in relation to the API response order. | [optional] |

### Return type

[**UsersListResultV2**](UsersListResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## users_v2_show

> <UsersShowResultV2> users_v2_show(id)

Show Users V2

Get a single user.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::UsersV2Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | Unique identifier of the user

begin
  # Show Users V2
  result = api_instance.users_v2_show(id)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling UsersV2Api->users_v2_show: #{e}"
end
```

#### Using the users_v2_show_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersShowResultV2>, Integer, Hash)> users_v2_show_with_http_info(id)

```ruby
begin
  # Show Users V2
  data, status_code, headers = api_instance.users_v2_show_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersShowResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling UsersV2Api->users_v2_show_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the user |  |

### Return type

[**UsersShowResultV2**](UsersShowResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

