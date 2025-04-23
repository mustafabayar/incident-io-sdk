# IncidentIoSdk::AlertsV2Api

All URIs are relative to *https://api.incident.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**alerts_v2_list**](AlertsV2Api.md#alerts_v2_list) | **GET** /v2/alerts | List Alerts V2 |
| [**alerts_v2_list_incident_alerts**](AlertsV2Api.md#alerts_v2_list_incident_alerts) | **GET** /v2/incident_alerts | ListIncidentAlerts Alerts V2 |
| [**alerts_v2_show**](AlertsV2Api.md#alerts_v2_show) | **GET** /v2/alerts/{id} | Show Alerts V2 |


## alerts_v2_list

> <AlertsListResultV2> alerts_v2_list(page_size, opts)

List Alerts V2

List all alerts for your account.    This endpoint supports a number of filters, which can help find alerts matching certain criteria. These filters work similarly to the filters on the incidents endpoint, where  a field is specified alongside a comparison operator in the query string.  Note that: - Filters may be used together, and the result will be alerts that match all filters. - All query parameters must be URI encoded.  ### By deduplication_key  Find all alerts with deduplication_key ABC:    curl --get 'https://api.incident.io/v2/alerts' \\    --data 'deduplication_key[is]=ABC'  ### By status  Find all alerts in a firing state:    curl --get 'https://api.incident.io/v2/alerts' \\    --data 'status[one_of]=firing'   

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::AlertsV2Api.new
page_size = 25 # Integer | Number of alerts to return per page
opts = {
  after: '01FCNDV6P870EA6S7TK1DSYDG0', # String | If provided, pass this as the 'after' param to load the next page
  deduplication_key: { key: ["some_value"]}, # Hash<String, Array<String>> | Filter on alert deduplication key. The accepted operator is 'is'.
  status: { key: ["some_value"]} # Hash<String, Array<String>> | Filter on alert status. The accepted operators are 'one_of', or 'not_in'.
}

begin
  # List Alerts V2
  result = api_instance.alerts_v2_list(page_size, opts)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling AlertsV2Api->alerts_v2_list: #{e}"
end
```

#### Using the alerts_v2_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AlertsListResultV2>, Integer, Hash)> alerts_v2_list_with_http_info(page_size, opts)

```ruby
begin
  # List Alerts V2
  data, status_code, headers = api_instance.alerts_v2_list_with_http_info(page_size, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AlertsListResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling AlertsV2Api->alerts_v2_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_size** | **Integer** | Number of alerts to return per page | [default to 25] |
| **after** | **String** | If provided, pass this as the &#39;after&#39; param to load the next page | [optional] |
| **deduplication_key** | [**Hash&lt;String, Array&lt;String&gt;&gt;**](Array&lt;String&gt;.md) | Filter on alert deduplication key. The accepted operator is &#39;is&#39;. | [optional] |
| **status** | [**Hash&lt;String, Array&lt;String&gt;&gt;**](Array&lt;String&gt;.md) | Filter on alert status. The accepted operators are &#39;one_of&#39;, or &#39;not_in&#39;. | [optional] |

### Return type

[**AlertsListResultV2**](AlertsListResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## alerts_v2_list_incident_alerts

> <AlertsListIncidentAlertsResultV2> alerts_v2_list_incident_alerts(page_size, opts)

ListIncidentAlerts Alerts V2

List the connections between incidents and alerts

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::AlertsV2Api.new
page_size = 25 # Integer | Number of incident alerts to return per page
opts = {
  after: '01FCNDV6P870EA6S7TK1DSYDG0', # String | If provided, pass this as the 'after' param to load the next page
  alert_id: '01FCNDV6P870EA6S7TK1DSYDG1', # String | Alert that this incident alert refers to
  incident_id: '01FCNDV6P870EA6S7TK1DSYDG0' # String | Incident that this incident alert is attached to
}

begin
  # ListIncidentAlerts Alerts V2
  result = api_instance.alerts_v2_list_incident_alerts(page_size, opts)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling AlertsV2Api->alerts_v2_list_incident_alerts: #{e}"
end
```

#### Using the alerts_v2_list_incident_alerts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AlertsListIncidentAlertsResultV2>, Integer, Hash)> alerts_v2_list_incident_alerts_with_http_info(page_size, opts)

```ruby
begin
  # ListIncidentAlerts Alerts V2
  data, status_code, headers = api_instance.alerts_v2_list_incident_alerts_with_http_info(page_size, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AlertsListIncidentAlertsResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling AlertsV2Api->alerts_v2_list_incident_alerts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_size** | **Integer** | Number of incident alerts to return per page | [default to 25] |
| **after** | **String** | If provided, pass this as the &#39;after&#39; param to load the next page | [optional] |
| **alert_id** | **String** | Alert that this incident alert refers to | [optional] |
| **incident_id** | **String** | Incident that this incident alert is attached to | [optional] |

### Return type

[**AlertsListIncidentAlertsResultV2**](AlertsListIncidentAlertsResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## alerts_v2_show

> <AlertsShowResultV2> alerts_v2_show(id)

Show Alerts V2

Show a single alert for your account

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::AlertsV2Api.new
id = '01FDAG4SAP5TYPT98WGR2N7W91' # String | Unique identifier for the alert

begin
  # Show Alerts V2
  result = api_instance.alerts_v2_show(id)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling AlertsV2Api->alerts_v2_show: #{e}"
end
```

#### Using the alerts_v2_show_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AlertsShowResultV2>, Integer, Hash)> alerts_v2_show_with_http_info(id)

```ruby
begin
  # Show Alerts V2
  data, status_code, headers = api_instance.alerts_v2_show_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AlertsShowResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling AlertsV2Api->alerts_v2_show_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the alert |  |

### Return type

[**AlertsShowResultV2**](AlertsShowResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

