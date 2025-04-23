# IncidentIoSdk::CatalogV3Api

All URIs are relative to *https://api.incident.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**catalog_v3_create_entry**](CatalogV3Api.md#catalog_v3_create_entry) | **POST** /v3/catalog_entries | CreateEntry Catalog V3 |
| [**catalog_v3_create_type**](CatalogV3Api.md#catalog_v3_create_type) | **POST** /v3/catalog_types | CreateType Catalog V3 |
| [**catalog_v3_destroy_entry**](CatalogV3Api.md#catalog_v3_destroy_entry) | **DELETE** /v3/catalog_entries/{id} | DestroyEntry Catalog V3 |
| [**catalog_v3_destroy_type**](CatalogV3Api.md#catalog_v3_destroy_type) | **DELETE** /v3/catalog_types/{id} | DestroyType Catalog V3 |
| [**catalog_v3_list_entries**](CatalogV3Api.md#catalog_v3_list_entries) | **GET** /v3/catalog_entries | ListEntries Catalog V3 |
| [**catalog_v3_list_resources**](CatalogV3Api.md#catalog_v3_list_resources) | **GET** /v3/catalog_resources | ListResources Catalog V3 |
| [**catalog_v3_list_types**](CatalogV3Api.md#catalog_v3_list_types) | **GET** /v3/catalog_types | ListTypes Catalog V3 |
| [**catalog_v3_show_entry**](CatalogV3Api.md#catalog_v3_show_entry) | **GET** /v3/catalog_entries/{id} | ShowEntry Catalog V3 |
| [**catalog_v3_show_type**](CatalogV3Api.md#catalog_v3_show_type) | **GET** /v3/catalog_types/{id} | ShowType Catalog V3 |
| [**catalog_v3_update_entry**](CatalogV3Api.md#catalog_v3_update_entry) | **PUT** /v3/catalog_entries/{id} | UpdateEntry Catalog V3 |
| [**catalog_v3_update_type**](CatalogV3Api.md#catalog_v3_update_type) | **PUT** /v3/catalog_types/{id} | UpdateType Catalog V3 |
| [**catalog_v3_update_type_schema**](CatalogV3Api.md#catalog_v3_update_type_schema) | **POST** /v3/catalog_types/{id}/actions/update_schema | UpdateTypeSchema Catalog V3 |


## catalog_v3_create_entry

> <CatalogCreateEntryResultV3> catalog_v3_create_entry(catalog_create_entry_payload_v3)

CreateEntry Catalog V3

Create an entry within the catalog. We support a maximum of 50,000 entries per type.  If you call this API with a payload where the external_id and catalog_type_id match an existing entry, the existing entry will be updated.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CatalogV3Api.new
catalog_create_entry_payload_v3 = IncidentIoSdk::CatalogCreateEntryPayloadV3.new({attribute_values: { key: IncidentIoSdk::CatalogEngineParamBindingPayloadV3.new}, catalog_type_id: '01FCNDV6P870EA6S7TK1DSYDG0', name: 'Primary On-call'}) # CatalogCreateEntryPayloadV3 | 

begin
  # CreateEntry Catalog V3
  result = api_instance.catalog_v3_create_entry(catalog_create_entry_payload_v3)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV3Api->catalog_v3_create_entry: #{e}"
end
```

#### Using the catalog_v3_create_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CatalogCreateEntryResultV3>, Integer, Hash)> catalog_v3_create_entry_with_http_info(catalog_create_entry_payload_v3)

```ruby
begin
  # CreateEntry Catalog V3
  data, status_code, headers = api_instance.catalog_v3_create_entry_with_http_info(catalog_create_entry_payload_v3)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CatalogCreateEntryResultV3>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV3Api->catalog_v3_create_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_create_entry_payload_v3** | [**CatalogCreateEntryPayloadV3**](CatalogCreateEntryPayloadV3.md) |  |  |

### Return type

[**CatalogCreateEntryResultV3**](CatalogCreateEntryResultV3.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## catalog_v3_create_type

> <CatalogCreateTypeResultV3> catalog_v3_create_type(catalog_create_type_payload_v3)

CreateType Catalog V3

Create a catalog type. The schema must be updated using the UpdateTypeSchema endpoint.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CatalogV3Api.new
catalog_create_type_payload_v3 = IncidentIoSdk::CatalogCreateTypePayloadV3.new({description: 'Represents Kubernetes clusters that we run inside of GKE.', name: 'Kubernetes Cluster'}) # CatalogCreateTypePayloadV3 | 

begin
  # CreateType Catalog V3
  result = api_instance.catalog_v3_create_type(catalog_create_type_payload_v3)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV3Api->catalog_v3_create_type: #{e}"
end
```

#### Using the catalog_v3_create_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CatalogCreateTypeResultV3>, Integer, Hash)> catalog_v3_create_type_with_http_info(catalog_create_type_payload_v3)

```ruby
begin
  # CreateType Catalog V3
  data, status_code, headers = api_instance.catalog_v3_create_type_with_http_info(catalog_create_type_payload_v3)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CatalogCreateTypeResultV3>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV3Api->catalog_v3_create_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_create_type_payload_v3** | [**CatalogCreateTypePayloadV3**](CatalogCreateTypePayloadV3.md) |  |  |

### Return type

[**CatalogCreateTypeResultV3**](CatalogCreateTypeResultV3.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## catalog_v3_destroy_entry

> catalog_v3_destroy_entry(id)

DestroyEntry Catalog V3

Archives a catalog entry.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CatalogV3Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | ID of this catalog entry

begin
  # DestroyEntry Catalog V3
  api_instance.catalog_v3_destroy_entry(id)
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV3Api->catalog_v3_destroy_entry: #{e}"
end
```

#### Using the catalog_v3_destroy_entry_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> catalog_v3_destroy_entry_with_http_info(id)

```ruby
begin
  # DestroyEntry Catalog V3
  data, status_code, headers = api_instance.catalog_v3_destroy_entry_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV3Api->catalog_v3_destroy_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of this catalog entry |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## catalog_v3_destroy_type

> catalog_v3_destroy_type(id)

DestroyType Catalog V3

Archives a catalog type and associated entries.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CatalogV3Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | ID of this catalog type

begin
  # DestroyType Catalog V3
  api_instance.catalog_v3_destroy_type(id)
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV3Api->catalog_v3_destroy_type: #{e}"
end
```

#### Using the catalog_v3_destroy_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> catalog_v3_destroy_type_with_http_info(id)

```ruby
begin
  # DestroyType Catalog V3
  data, status_code, headers = api_instance.catalog_v3_destroy_type_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV3Api->catalog_v3_destroy_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of this catalog type |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## catalog_v3_list_entries

> <CatalogListEntriesResultV3> catalog_v3_list_entries(catalog_type_id, page_size, opts)

ListEntries Catalog V3

List entries for a catalog type.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CatalogV3Api.new
catalog_type_id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | ID of this catalog type
page_size = 25 # Integer | The integer number of records to return
opts = {
  after: '01FDAG4SAP5TYPT98WGR2N7W91', # String | An record's ID. This endpoint will return a list of records after this ID in relation to the API response order.
  identifier: 'abc123' # String | If specified, only entries with this identifier will be returned. This will search by ID, external ID, and aliases.  If 'use name as identifier' is enabled for the catalog type, this will also match on name.
}

begin
  # ListEntries Catalog V3
  result = api_instance.catalog_v3_list_entries(catalog_type_id, page_size, opts)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV3Api->catalog_v3_list_entries: #{e}"
end
```

#### Using the catalog_v3_list_entries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CatalogListEntriesResultV3>, Integer, Hash)> catalog_v3_list_entries_with_http_info(catalog_type_id, page_size, opts)

```ruby
begin
  # ListEntries Catalog V3
  data, status_code, headers = api_instance.catalog_v3_list_entries_with_http_info(catalog_type_id, page_size, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CatalogListEntriesResultV3>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV3Api->catalog_v3_list_entries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_type_id** | **String** | ID of this catalog type |  |
| **page_size** | **Integer** | The integer number of records to return | [default to 25] |
| **after** | **String** | An record&#39;s ID. This endpoint will return a list of records after this ID in relation to the API response order. | [optional] |
| **identifier** | **String** | If specified, only entries with this identifier will be returned. This will search by ID, external ID, and aliases.  If &#39;use name as identifier&#39; is enabled for the catalog type, this will also match on name. | [optional] |

### Return type

[**CatalogListEntriesResultV3**](CatalogListEntriesResultV3.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## catalog_v3_list_resources

> <CatalogListResourcesResultV3> catalog_v3_list_resources

ListResources Catalog V3

List available engine resources for the catalog.  A resource represents a type of data that can be held within the catalog, so this endpoint can be used to see what attribute types can be used when updating the schema of a catalog type. 

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CatalogV3Api.new

begin
  # ListResources Catalog V3
  result = api_instance.catalog_v3_list_resources
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV3Api->catalog_v3_list_resources: #{e}"
end
```

#### Using the catalog_v3_list_resources_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CatalogListResourcesResultV3>, Integer, Hash)> catalog_v3_list_resources_with_http_info

```ruby
begin
  # ListResources Catalog V3
  data, status_code, headers = api_instance.catalog_v3_list_resources_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CatalogListResourcesResultV3>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV3Api->catalog_v3_list_resources_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CatalogListResourcesResultV3**](CatalogListResourcesResultV3.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## catalog_v3_list_types

> <CatalogListTypesResultV3> catalog_v3_list_types

ListTypes Catalog V3

List all catalog types for an organisation, including those synced from external resources.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CatalogV3Api.new

begin
  # ListTypes Catalog V3
  result = api_instance.catalog_v3_list_types
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV3Api->catalog_v3_list_types: #{e}"
end
```

#### Using the catalog_v3_list_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CatalogListTypesResultV3>, Integer, Hash)> catalog_v3_list_types_with_http_info

```ruby
begin
  # ListTypes Catalog V3
  data, status_code, headers = api_instance.catalog_v3_list_types_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CatalogListTypesResultV3>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV3Api->catalog_v3_list_types_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CatalogListTypesResultV3**](CatalogListTypesResultV3.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## catalog_v3_show_entry

> <CatalogShowEntryResultV3> catalog_v3_show_entry(id)

ShowEntry Catalog V3

Show a single catalog entry.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CatalogV3Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | ID of this catalog entry

begin
  # ShowEntry Catalog V3
  result = api_instance.catalog_v3_show_entry(id)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV3Api->catalog_v3_show_entry: #{e}"
end
```

#### Using the catalog_v3_show_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CatalogShowEntryResultV3>, Integer, Hash)> catalog_v3_show_entry_with_http_info(id)

```ruby
begin
  # ShowEntry Catalog V3
  data, status_code, headers = api_instance.catalog_v3_show_entry_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CatalogShowEntryResultV3>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV3Api->catalog_v3_show_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of this catalog entry |  |

### Return type

[**CatalogShowEntryResultV3**](CatalogShowEntryResultV3.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## catalog_v3_show_type

> <CatalogShowTypeResultV3> catalog_v3_show_type(id)

ShowType Catalog V3

Show a single catalog type.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CatalogV3Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | ID of this catalog type

begin
  # ShowType Catalog V3
  result = api_instance.catalog_v3_show_type(id)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV3Api->catalog_v3_show_type: #{e}"
end
```

#### Using the catalog_v3_show_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CatalogShowTypeResultV3>, Integer, Hash)> catalog_v3_show_type_with_http_info(id)

```ruby
begin
  # ShowType Catalog V3
  data, status_code, headers = api_instance.catalog_v3_show_type_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CatalogShowTypeResultV3>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV3Api->catalog_v3_show_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of this catalog type |  |

### Return type

[**CatalogShowTypeResultV3**](CatalogShowTypeResultV3.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## catalog_v3_update_entry

> <CatalogUpdateEntryResultV3> catalog_v3_update_entry(id, catalog_update_entry_payload_v3)

UpdateEntry Catalog V3

Updates an existing catalog entry.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CatalogV3Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | ID of this catalog entry
catalog_update_entry_payload_v3 = IncidentIoSdk::CatalogUpdateEntryPayloadV3.new({attribute_values: { key: IncidentIoSdk::CatalogEngineParamBindingPayloadV3.new}, name: 'Primary On-call'}) # CatalogUpdateEntryPayloadV3 | 

begin
  # UpdateEntry Catalog V3
  result = api_instance.catalog_v3_update_entry(id, catalog_update_entry_payload_v3)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV3Api->catalog_v3_update_entry: #{e}"
end
```

#### Using the catalog_v3_update_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CatalogUpdateEntryResultV3>, Integer, Hash)> catalog_v3_update_entry_with_http_info(id, catalog_update_entry_payload_v3)

```ruby
begin
  # UpdateEntry Catalog V3
  data, status_code, headers = api_instance.catalog_v3_update_entry_with_http_info(id, catalog_update_entry_payload_v3)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CatalogUpdateEntryResultV3>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV3Api->catalog_v3_update_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of this catalog entry |  |
| **catalog_update_entry_payload_v3** | [**CatalogUpdateEntryPayloadV3**](CatalogUpdateEntryPayloadV3.md) |  |  |

### Return type

[**CatalogUpdateEntryResultV3**](CatalogUpdateEntryResultV3.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## catalog_v3_update_type

> <CatalogUpdateTypeResultV3> catalog_v3_update_type(id, catalog_update_type_payload_v3)

UpdateType Catalog V3

Updates an existing catalog type. The schema must be updated using the UpdateTypeSchema endpoint.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CatalogV3Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | ID of this catalog type
catalog_update_type_payload_v3 = IncidentIoSdk::CatalogUpdateTypePayloadV3.new({description: 'Represents Kubernetes clusters that we run inside of GKE.', name: 'Kubernetes Cluster'}) # CatalogUpdateTypePayloadV3 | 

begin
  # UpdateType Catalog V3
  result = api_instance.catalog_v3_update_type(id, catalog_update_type_payload_v3)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV3Api->catalog_v3_update_type: #{e}"
end
```

#### Using the catalog_v3_update_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CatalogUpdateTypeResultV3>, Integer, Hash)> catalog_v3_update_type_with_http_info(id, catalog_update_type_payload_v3)

```ruby
begin
  # UpdateType Catalog V3
  data, status_code, headers = api_instance.catalog_v3_update_type_with_http_info(id, catalog_update_type_payload_v3)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CatalogUpdateTypeResultV3>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV3Api->catalog_v3_update_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of this catalog type |  |
| **catalog_update_type_payload_v3** | [**CatalogUpdateTypePayloadV3**](CatalogUpdateTypePayloadV3.md) |  |  |

### Return type

[**CatalogUpdateTypeResultV3**](CatalogUpdateTypeResultV3.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## catalog_v3_update_type_schema

> <CatalogUpdateTypeSchemaResultV3> catalog_v3_update_type_schema(id, catalog_update_type_schema_payload_v3)

UpdateTypeSchema Catalog V3

Update an existing catalog types schema, adding or removing attributes.  Updating the schema is handled separately from creating and updating types, so that you don't have to worry about dependencies between types. For example, if type A has an attribute that relies on type B, you would have to create type B first.  By allowing the creation of types without a schema, they can be created in any order, but it means that you need to make a separate call to this endpoint to update the schema.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CatalogV3Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | ID of this catalog type
catalog_update_type_schema_payload_v3 = IncidentIoSdk::CatalogUpdateTypeSchemaPayloadV3.new({attributes: [{"array": false, "backlink_attribute": "abc123", "id": "01GW2G3V0S59R238FAHPDS1R66", "mode": "api", "name": "tier", "path": [{"attribute_id": "abc123"}], "type": "Custom[\"Service\"]"}], version: 1}) # CatalogUpdateTypeSchemaPayloadV3 | 

begin
  # UpdateTypeSchema Catalog V3
  result = api_instance.catalog_v3_update_type_schema(id, catalog_update_type_schema_payload_v3)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV3Api->catalog_v3_update_type_schema: #{e}"
end
```

#### Using the catalog_v3_update_type_schema_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CatalogUpdateTypeSchemaResultV3>, Integer, Hash)> catalog_v3_update_type_schema_with_http_info(id, catalog_update_type_schema_payload_v3)

```ruby
begin
  # UpdateTypeSchema Catalog V3
  data, status_code, headers = api_instance.catalog_v3_update_type_schema_with_http_info(id, catalog_update_type_schema_payload_v3)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CatalogUpdateTypeSchemaResultV3>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV3Api->catalog_v3_update_type_schema_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of this catalog type |  |
| **catalog_update_type_schema_payload_v3** | [**CatalogUpdateTypeSchemaPayloadV3**](CatalogUpdateTypeSchemaPayloadV3.md) |  |  |

### Return type

[**CatalogUpdateTypeSchemaResultV3**](CatalogUpdateTypeSchemaResultV3.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

