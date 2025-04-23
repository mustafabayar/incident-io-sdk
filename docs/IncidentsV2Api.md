# IncidentIoSdk::IncidentsV2Api

All URIs are relative to *https://api.incident.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**incidents_v2_create**](IncidentsV2Api.md#incidents_v2_create) | **POST** /v2/incidents | Create Incidents V2 |
| [**incidents_v2_edit**](IncidentsV2Api.md#incidents_v2_edit) | **POST** /v2/incidents/{id}/actions/edit | Edit Incidents V2 |
| [**incidents_v2_list**](IncidentsV2Api.md#incidents_v2_list) | **GET** /v2/incidents | List Incidents V2 |
| [**incidents_v2_show**](IncidentsV2Api.md#incidents_v2_show) | **GET** /v2/incidents/{id} | Show Incidents V2 |


## incidents_v2_create

> <IncidentsCreateResultV2> incidents_v2_create(incidents_create_payload_v2)

Create Incidents V2

Create a new incident.  Note that if the incident mode is set to \"retrospective\" then the new incident will not be announced in Slack. 

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentsV2Api.new
incidents_create_payload_v2 = IncidentIoSdk::IncidentsCreatePayloadV2.new({idempotency_key: 'alert-uuid', visibility: 'public'}) # IncidentsCreatePayloadV2 | 

begin
  # Create Incidents V2
  result = api_instance.incidents_v2_create(incidents_create_payload_v2)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentsV2Api->incidents_v2_create: #{e}"
end
```

#### Using the incidents_v2_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentsCreateResultV2>, Integer, Hash)> incidents_v2_create_with_http_info(incidents_create_payload_v2)

```ruby
begin
  # Create Incidents V2
  data, status_code, headers = api_instance.incidents_v2_create_with_http_info(incidents_create_payload_v2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentsCreateResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentsV2Api->incidents_v2_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incidents_create_payload_v2** | [**IncidentsCreatePayloadV2**](IncidentsCreatePayloadV2.md) |  |  |

### Return type

[**IncidentsCreateResultV2**](IncidentsCreateResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## incidents_v2_edit

> <IncidentsEditResultV2> incidents_v2_edit(id, incidents_edit_payload_v2)

Edit Incidents V2

Edit an existing incident.  This endpoint allows you to edit the properties of an existing incident: e.g. set the severity or update custom fields.  When using this endpoint, only fields that are provided will be edited (omitted fields will be ignored). 

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentsV2Api.new
id = '01G18REBY9AYH6CMWCJ2CVCYCH' # String | The unique identifier of the incident that you want to edit
incidents_edit_payload_v2 = IncidentIoSdk::IncidentsEditPayloadV2.new({incident: IncidentIoSdk::IncidentEditPayloadV2.new, notify_incident_channel: true}) # IncidentsEditPayloadV2 | 

begin
  # Edit Incidents V2
  result = api_instance.incidents_v2_edit(id, incidents_edit_payload_v2)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentsV2Api->incidents_v2_edit: #{e}"
end
```

#### Using the incidents_v2_edit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentsEditResultV2>, Integer, Hash)> incidents_v2_edit_with_http_info(id, incidents_edit_payload_v2)

```ruby
begin
  # Edit Incidents V2
  data, status_code, headers = api_instance.incidents_v2_edit_with_http_info(id, incidents_edit_payload_v2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentsEditResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentsV2Api->incidents_v2_edit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the incident that you want to edit |  |
| **incidents_edit_payload_v2** | [**IncidentsEditPayloadV2**](IncidentsEditPayloadV2.md) |  |  |

### Return type

[**IncidentsEditResultV2**](IncidentsEditResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## incidents_v2_list

> <IncidentsListResultV2> incidents_v2_list(opts)

List Incidents V2

List all incidents for an organisation.  This endpoint supports a number of filters, which can help find incidents matching certain criteria.  Filters are provided as query parameters, but due to the dynamic nature of what you can query by (different accounts have different custom fields, statuses, etc) they are more complex than most.  The maximum page size that can be requested is 250.  To help, here are some exemplar curl requests with a human description of what they search for.  Note that: - Filters may be used together, and the result will be incidents that match all filters. - IDs are normally in UUID format, but have been replaced with shorter strings to improve readability. - All query parameters must be URI encoded.  ### By status  With status of id=ABC, find all incidents that are set to that status:    curl --get 'https://api.incident.io/v2/incidents' \\    --data 'status[one_of]=ABC'  Or all incidents that are not set to status with id=ABC:    curl --get 'https://api.incident.io/v2/incidents' \\    --data 'status[not_in]=ABC'  ### By created_at or updated_at  Find all incidents that follow specified date parameters for created_at and updated_at fields. Possible values are \"gte\" (greater than or equal to) and \"lte\" (less than or equal to). The following example finds all incidents created before or on 2021-01-02T00:00:00Z:    curl --get 'https://api.incident.io/v2/incidents' \\    --data 'created_at[lte]=2021-01-02'  ### By status category  Find all incidents that are in a status category. Possible values are \"triage\", \"declined\", \"merged\", \"canceled\", \"live\", \"learning\" and \"closed\":    curl --get 'https://api.incident.io/v2/incidents' \\    --data 'status_category[one_of]=live'  Or all incidents that are not in a status category:    curl --get 'https://api.incident.io/v2/incidents' \\    --data 'status_category[not_in]=live'   ### By severity  With severity of id=ABC, find all incidents that are set to that severity:    curl --get 'https://api.incident.io/v2/incidents' \\    --data 'severity[one_of]=ABC'  Or all incidents where severity rank is greater-than-or-equal-to the rank of severity id=ABC:    curl --get 'https://api.incident.io/v2/incidents' \\    --data 'severity[gte]=ABC'  Or all incidents where severity rank is less-than-or-equal-to the rank of severity id=ABC:    curl --get 'https://api.incident.io/v2/incidents' \\    --data 'severity[lte]=ABC'  ### By incident type  With incident type of id=ABC, find all incidents that are of that type:    curl --get 'https://api.incident.io/v2/incidents' \\    --data 'incident_type[one_of]=ABC'  Or all incidents not of that type:    curl --get 'https://api.incident.io/v2/incidents' \\    --data 'incident_type[not_in]=ABC'  ### By incident mode  By default, we return standard and retrospective incidents. This means that test and tutorial incidents are filtered out. To override this behaviour, you can use the mode filter to specify which modes you want to get.  To find incidents of all modes:    curl --get 'https://api.incident.io/v2/incidents' \\    --data 'mode[one_of]=standard&mode[one_of]=retrospective&mode[one_of]=test&mode[one_of]=tutorial'  To find just test incidents:    curl --get 'https://api.incident.io/v2/incidents' \\    --data 'mode[one_of]=test'   ### By incident role  Roles and custom fields have another nested layer in the query parameter, to account for operations against any of the roles or custom fields created in the account.  With incident role id=ABC, find all incidents where that role is unset:    curl --get 'https://api.incident.io/v2/incidents' \\    --data 'incident_role[ABC][is_blank]=true'  Or where the role has been set:    curl --get 'https://api.incident.io/v2/incidents' \\    --data 'incident_role[ABC][is_blank]=false'  ### By option custom fields  With an option custom field id=ABC, all incidents that have field ABC set to the custom field option of id=XYZ:    curl \\    --get 'https://api.incident.io/v2/incidents' \\    --data 'custom_field[ABC][one_of]=XYZ'  Or all incidents that do not have custom field id=ABC set to option id=XYZ:    curl \\    --get 'https://api.incident.io/v2/incidents' \\    --data 'custom_field[ABC][not_in]=XYZ' 

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentsV2Api.new
opts = {
  page_size: 25, # Integer | number of records to return
  after: '01FDAG4SAP5TYPT98WGR2N7W91', # String | An incident's ID. This endpoint will return a list of incidents after this ID in relation to the API response order.
  status: { key: ["some_value"]}, # Hash<String, Array<String>> | Filter on incident status. The accepted operators are 'one_of', or 'not_in'.
  status_category: { key: ["some_value"]}, # Hash<String, Array<String>> | Filter on the category of the incidents status. The accepted operators are 'one_of', or 'not_in'.
  created_at: { key: ["some_value"]}, # Hash<String, Array<String>> | Filter on incident created at timestamp. The accepted operators are 'gte', 'lte' and 'date_range'.
  updated_at: { key: ["some_value"]}, # Hash<String, Array<String>> | Filter on incident updated at timestamp. The accepted operators are 'gte', 'lte' and 'date_range'.
  severity: { key: ["some_value"]}, # Hash<String, Array<String>> | Filter on incident severity. The accepted operators are 'one_of', 'not_in', 'gte', 'lte'.
  incident_type: { key: ["some_value"]}, # Hash<String, Array<String>> | Filter on incident type. The accepted operators are 'one_of, or 'not_in'.
  incident_role: { key: { key: ["value"]}}, # Hash<String, Hash<String, Array<String>>> | Filter on an incident role. Role ID should be sent, followed by the operator and values. The accepted operators are 'one_of', 'is_blank'.
  custom_field: { key: { key: ["value"]}}, # Hash<String, Hash<String, Array<String>>> | Filter on an incident custom field. Custom field ID should be sent, followed by the operator and values. Accepted operator will depend on the custom field type.
  mode: { key: ["some_value"]} # Hash<String, Array<String>> | Filter on incident mode. The accepted operator is 'one_of'.  If this is not provided, this value defaults to `{\"one_of\": [\"standard\", \"retrospective\"] }`, meaning that test and tutorial incidents are not included.
}

begin
  # List Incidents V2
  result = api_instance.incidents_v2_list(opts)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentsV2Api->incidents_v2_list: #{e}"
end
```

#### Using the incidents_v2_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentsListResultV2>, Integer, Hash)> incidents_v2_list_with_http_info(opts)

```ruby
begin
  # List Incidents V2
  data, status_code, headers = api_instance.incidents_v2_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentsListResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentsV2Api->incidents_v2_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_size** | **Integer** | number of records to return | [optional][default to 25] |
| **after** | **String** | An incident&#39;s ID. This endpoint will return a list of incidents after this ID in relation to the API response order. | [optional] |
| **status** | [**Hash&lt;String, Array&lt;String&gt;&gt;**](Array&lt;String&gt;.md) | Filter on incident status. The accepted operators are &#39;one_of&#39;, or &#39;not_in&#39;. | [optional] |
| **status_category** | [**Hash&lt;String, Array&lt;String&gt;&gt;**](Array&lt;String&gt;.md) | Filter on the category of the incidents status. The accepted operators are &#39;one_of&#39;, or &#39;not_in&#39;. | [optional] |
| **created_at** | [**Hash&lt;String, Array&lt;String&gt;&gt;**](Array&lt;String&gt;.md) | Filter on incident created at timestamp. The accepted operators are &#39;gte&#39;, &#39;lte&#39; and &#39;date_range&#39;. | [optional] |
| **updated_at** | [**Hash&lt;String, Array&lt;String&gt;&gt;**](Array&lt;String&gt;.md) | Filter on incident updated at timestamp. The accepted operators are &#39;gte&#39;, &#39;lte&#39; and &#39;date_range&#39;. | [optional] |
| **severity** | [**Hash&lt;String, Array&lt;String&gt;&gt;**](Array&lt;String&gt;.md) | Filter on incident severity. The accepted operators are &#39;one_of&#39;, &#39;not_in&#39;, &#39;gte&#39;, &#39;lte&#39;. | [optional] |
| **incident_type** | [**Hash&lt;String, Array&lt;String&gt;&gt;**](Array&lt;String&gt;.md) | Filter on incident type. The accepted operators are &#39;one_of, or &#39;not_in&#39;. | [optional] |
| **incident_role** | [**Hash&lt;String, Hash&lt;String, Array&lt;String&gt;&gt;&gt;**](Hash&lt;String, Array&lt;String&gt;&gt;.md) | Filter on an incident role. Role ID should be sent, followed by the operator and values. The accepted operators are &#39;one_of&#39;, &#39;is_blank&#39;. | [optional] |
| **custom_field** | [**Hash&lt;String, Hash&lt;String, Array&lt;String&gt;&gt;&gt;**](Hash&lt;String, Array&lt;String&gt;&gt;.md) | Filter on an incident custom field. Custom field ID should be sent, followed by the operator and values. Accepted operator will depend on the custom field type. | [optional] |
| **mode** | [**Hash&lt;String, Array&lt;String&gt;&gt;**](Array&lt;String&gt;.md) | Filter on incident mode. The accepted operator is &#39;one_of&#39;.  If this is not provided, this value defaults to &#x60;{\&quot;one_of\&quot;: [\&quot;standard\&quot;, \&quot;retrospective\&quot;] }&#x60;, meaning that test and tutorial incidents are not included. | [optional] |

### Return type

[**IncidentsListResultV2**](IncidentsListResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## incidents_v2_show

> <IncidentsShowResultV2> incidents_v2_show(id)

Show Incidents V2

Get a single incident.  The ID supplied can be either the incident's full ID, or the numeric part of its reference. For example, to get INC-123, you could use either its full ID or:    curl \\    --get 'https://api.incident.io/v2/incidents/123 

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::IncidentsV2Api.new
id = '01FDAG4SAP5TYPT98WGR2N7W91' # String | Unique identifier for the incident

begin
  # Show Incidents V2
  result = api_instance.incidents_v2_show(id)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentsV2Api->incidents_v2_show: #{e}"
end
```

#### Using the incidents_v2_show_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentsShowResultV2>, Integer, Hash)> incidents_v2_show_with_http_info(id)

```ruby
begin
  # Show Incidents V2
  data, status_code, headers = api_instance.incidents_v2_show_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentsShowResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling IncidentsV2Api->incidents_v2_show_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the incident |  |

### Return type

[**IncidentsShowResultV2**](IncidentsShowResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

