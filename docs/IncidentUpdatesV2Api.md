# IncidentIoSdk::IncidentUpdatesV2Api

All URIs are relative to *https://api.incident.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**incident_updates_v2_list**](IncidentUpdatesV2Api.md#incident_updates_v2_list) | **GET** /v2/incident_updates | List Incident Updates V2 |


## incident_updates_v2_list

> <IncidentUpdatesListResultV2> incident_updates_v2_list(opts)

List Incident Updates V2

List all incident updates for an organisation, or for a specific incident.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentUpdatesV2Api.new
opts = {
  incident_id: '01G0J1EXE7AXZ2C93K61WBPYEH', # String | Incident whose updates you want to list
  page_size: 25, # Integer | Integer number of records to return
  after: '01FDAG4SAP5TYPT98WGR2N7W91' # String | An record's ID. This endpoint will return a list of records after this ID in relation to the API response order.
}

begin
  # List Incident Updates V2
  result = api_instance.incident_updates_v2_list(opts)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentUpdatesV2Api->incident_updates_v2_list: #{e}"
end
```

#### Using the incident_updates_v2_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentUpdatesListResultV2>, Integer, Hash)> incident_updates_v2_list_with_http_info(opts)

```ruby
begin
  # List Incident Updates V2
  data, status_code, headers = api_instance.incident_updates_v2_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentUpdatesListResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentUpdatesV2Api->incident_updates_v2_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_id** | **String** | Incident whose updates you want to list | [optional] |
| **page_size** | **Integer** | Integer number of records to return | [optional][default to 25] |
| **after** | **String** | An record&#39;s ID. This endpoint will return a list of records after this ID in relation to the API response order. | [optional] |

### Return type

[**IncidentUpdatesListResultV2**](IncidentUpdatesListResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

