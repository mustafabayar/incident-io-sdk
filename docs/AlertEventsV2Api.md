# IncidentIoSdk::AlertEventsV2Api

All URIs are relative to *https://api.incident.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**alert_events_v2_create_http**](AlertEventsV2Api.md#alert_events_v2_create_http) | **POST** /v2/alert_events/http/{alert_source_config_id} | CreateHTTP Alert Events V2 |


## alert_events_v2_create_http

> <AlertEventsCreateHTTPResultV2> alert_events_v2_create_http(alert_source_config_id, alert_events_create_http_payload_v2, opts)

CreateHTTP Alert Events V2

Create an alert event using an HTTP source.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::AlertEventsV2Api.new
alert_source_config_id = '01GW2G3V0S59R238FAHPDS1R66' # String | Which alert source config produced this alert
alert_events_create_http_payload_v2 = IncidentIoSdk::AlertEventsCreateHTTPPayloadV2.new({status: 'firing', title: '*errors.withMessage: PG::Error failed to connect'}) # AlertEventsCreateHTTPPayloadV2 | 
opts = {
  token: 'some-random-string' # String | Token used to authenticate the request, generated when configuring the alert source. Will be consumed via a URL query string parameter
}

begin
  # CreateHTTP Alert Events V2
  result = api_instance.alert_events_v2_create_http(alert_source_config_id, alert_events_create_http_payload_v2, opts)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling AlertEventsV2Api->alert_events_v2_create_http: #{e}"
end
```

#### Using the alert_events_v2_create_http_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AlertEventsCreateHTTPResultV2>, Integer, Hash)> alert_events_v2_create_http_with_http_info(alert_source_config_id, alert_events_create_http_payload_v2, opts)

```ruby
begin
  # CreateHTTP Alert Events V2
  data, status_code, headers = api_instance.alert_events_v2_create_http_with_http_info(alert_source_config_id, alert_events_create_http_payload_v2, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AlertEventsCreateHTTPResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling AlertEventsV2Api->alert_events_v2_create_http_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alert_source_config_id** | **String** | Which alert source config produced this alert |  |
| **alert_events_create_http_payload_v2** | [**AlertEventsCreateHTTPPayloadV2**](AlertEventsCreateHTTPPayloadV2.md) |  |  |
| **token** | **String** | Token used to authenticate the request, generated when configuring the alert source. Will be consumed via a URL query string parameter | [optional] |

### Return type

[**AlertEventsCreateHTTPResultV2**](AlertEventsCreateHTTPResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

