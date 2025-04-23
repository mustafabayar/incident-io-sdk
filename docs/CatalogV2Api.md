# IncidentIoSdk::CatalogV2Api

All URIs are relative to *https://api.incident.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**catalog_v2_create_entry**](CatalogV2Api.md#catalog_v2_create_entry) | **POST** /v2/catalog_entries | CreateEntry Catalog V2 |
| [**catalog_v2_create_type**](CatalogV2Api.md#catalog_v2_create_type) | **POST** /v2/catalog_types | CreateType Catalog V2 |
| [**catalog_v2_destroy_entry**](CatalogV2Api.md#catalog_v2_destroy_entry) | **DELETE** /v2/catalog_entries/{id} | DestroyEntry Catalog V2 |
| [**catalog_v2_destroy_type**](CatalogV2Api.md#catalog_v2_destroy_type) | **DELETE** /v2/catalog_types/{id} | DestroyType Catalog V2 |
| [**catalog_v2_list_entries**](CatalogV2Api.md#catalog_v2_list_entries) | **GET** /v2/catalog_entries | ListEntries Catalog V2 |
| [**catalog_v2_list_resources**](CatalogV2Api.md#catalog_v2_list_resources) | **GET** /v2/catalog_resources | ListResources Catalog V2 |
| [**catalog_v2_list_types**](CatalogV2Api.md#catalog_v2_list_types) | **GET** /v2/catalog_types | ListTypes Catalog V2 |
| [**catalog_v2_show_entry**](CatalogV2Api.md#catalog_v2_show_entry) | **GET** /v2/catalog_entries/{id} | ShowEntry Catalog V2 |
| [**catalog_v2_show_type**](CatalogV2Api.md#catalog_v2_show_type) | **GET** /v2/catalog_types/{id} | ShowType Catalog V2 |
| [**catalog_v2_update_entry**](CatalogV2Api.md#catalog_v2_update_entry) | **PUT** /v2/catalog_entries/{id} | UpdateEntry Catalog V2 |
| [**catalog_v2_update_type**](CatalogV2Api.md#catalog_v2_update_type) | **PUT** /v2/catalog_types/{id} | UpdateType Catalog V2 |
| [**catalog_v2_update_type_schema**](CatalogV2Api.md#catalog_v2_update_type_schema) | **POST** /v2/catalog_types/{id}/actions/update_schema | UpdateTypeSchema Catalog V2 |


## catalog_v2_create_entry

> <CatalogCreateEntryResultV2> catalog_v2_create_entry(catalog_create_entry_payload_v2)

CreateEntry Catalog V2

Create an entry within the catalog. We support a maximum of 50,000 entries per type.  If you call this API with a payload where the external_id and catalog_type_id match an existing entry, the existing entry will be updated.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CatalogV2Api.new
catalog_create_entry_payload_v2 = IncidentIoSdk::CatalogCreateEntryPayloadV2.new({attribute_values: { key: IncidentIoSdk::EngineParamBindingPayloadV2.new}, catalog_type_id: '01FCNDV6P870EA6S7TK1DSYDG0', name: 'Primary On-call'}) # CatalogCreateEntryPayloadV2 | 

begin
  # CreateEntry Catalog V2
  result = api_instance.catalog_v2_create_entry(catalog_create_entry_payload_v2)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV2Api->catalog_v2_create_entry: #{e}"
end
```

#### Using the catalog_v2_create_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CatalogCreateEntryResultV2>, Integer, Hash)> catalog_v2_create_entry_with_http_info(catalog_create_entry_payload_v2)

```ruby
begin
  # CreateEntry Catalog V2
  data, status_code, headers = api_instance.catalog_v2_create_entry_with_http_info(catalog_create_entry_payload_v2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CatalogCreateEntryResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV2Api->catalog_v2_create_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_create_entry_payload_v2** | [**CatalogCreateEntryPayloadV2**](CatalogCreateEntryPayloadV2.md) |  |  |

### Return type

[**CatalogCreateEntryResultV2**](CatalogCreateEntryResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## catalog_v2_create_type

> <CatalogCreateTypeResultV2> catalog_v2_create_type(catalog_create_type_payload_v2)

CreateType Catalog V2

Create a catalog type. The schema must be updated using the UpdateTypeSchema endpoint.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CatalogV2Api.new
catalog_create_type_payload_v2 = IncidentIoSdk::CatalogCreateTypePayloadV2.new({description: 'Represents Kubernetes clusters that we run inside of GKE.', name: 'Kubernetes Cluster'}) # CatalogCreateTypePayloadV2 | 

begin
  # CreateType Catalog V2
  result = api_instance.catalog_v2_create_type(catalog_create_type_payload_v2)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV2Api->catalog_v2_create_type: #{e}"
end
```

#### Using the catalog_v2_create_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CatalogCreateTypeResultV2>, Integer, Hash)> catalog_v2_create_type_with_http_info(catalog_create_type_payload_v2)

```ruby
begin
  # CreateType Catalog V2
  data, status_code, headers = api_instance.catalog_v2_create_type_with_http_info(catalog_create_type_payload_v2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CatalogCreateTypeResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV2Api->catalog_v2_create_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_create_type_payload_v2** | [**CatalogCreateTypePayloadV2**](CatalogCreateTypePayloadV2.md) |  |  |

### Return type

[**CatalogCreateTypeResultV2**](CatalogCreateTypeResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## catalog_v2_destroy_entry

> catalog_v2_destroy_entry(id)

DestroyEntry Catalog V2

Archives a catalog entry.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CatalogV2Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | ID of this catalog entry

begin
  # DestroyEntry Catalog V2
  api_instance.catalog_v2_destroy_entry(id)
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV2Api->catalog_v2_destroy_entry: #{e}"
end
```

#### Using the catalog_v2_destroy_entry_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> catalog_v2_destroy_entry_with_http_info(id)

```ruby
begin
  # DestroyEntry Catalog V2
  data, status_code, headers = api_instance.catalog_v2_destroy_entry_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV2Api->catalog_v2_destroy_entry_with_http_info: #{e}"
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


## catalog_v2_destroy_type

> catalog_v2_destroy_type(id)

DestroyType Catalog V2

Archives a catalog type and associated entries.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CatalogV2Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | ID of this catalog type

begin
  # DestroyType Catalog V2
  api_instance.catalog_v2_destroy_type(id)
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV2Api->catalog_v2_destroy_type: #{e}"
end
```

#### Using the catalog_v2_destroy_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> catalog_v2_destroy_type_with_http_info(id)

```ruby
begin
  # DestroyType Catalog V2
  data, status_code, headers = api_instance.catalog_v2_destroy_type_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV2Api->catalog_v2_destroy_type_with_http_info: #{e}"
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


## catalog_v2_list_entries

> <CatalogListEntriesResultV2> catalog_v2_list_entries(catalog_type_id, opts)

ListEntries Catalog V2

List entries for a catalog type.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CatalogV2Api.new
catalog_type_id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | ID of this catalog type
opts = {
  page_size: 25, # Integer | Integer number of records to return
  after: '01FDAG4SAP5TYPT98WGR2N7W91' # String | An record's ID. This endpoint will return a list of records after this ID in relation to the API response order.
}

begin
  # ListEntries Catalog V2
  result = api_instance.catalog_v2_list_entries(catalog_type_id, opts)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV2Api->catalog_v2_list_entries: #{e}"
end
```

#### Using the catalog_v2_list_entries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CatalogListEntriesResultV2>, Integer, Hash)> catalog_v2_list_entries_with_http_info(catalog_type_id, opts)

```ruby
begin
  # ListEntries Catalog V2
  data, status_code, headers = api_instance.catalog_v2_list_entries_with_http_info(catalog_type_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CatalogListEntriesResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV2Api->catalog_v2_list_entries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_type_id** | **String** | ID of this catalog type |  |
| **page_size** | **Integer** | Integer number of records to return | [optional][default to 25] |
| **after** | **String** | An record&#39;s ID. This endpoint will return a list of records after this ID in relation to the API response order. | [optional] |

### Return type

[**CatalogListEntriesResultV2**](CatalogListEntriesResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## catalog_v2_list_resources

> <CatalogListResourcesResultV2> catalog_v2_list_resources

ListResources Catalog V2

List available engine resources for the catalog.  A resource represents a type of data that can be held within the catalog, so this endpoint can be used to see what attribute types can be used when updating the schema of a catalog type. 

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CatalogV2Api.new

begin
  # ListResources Catalog V2
  result = api_instance.catalog_v2_list_resources
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV2Api->catalog_v2_list_resources: #{e}"
end
```

#### Using the catalog_v2_list_resources_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CatalogListResourcesResultV2>, Integer, Hash)> catalog_v2_list_resources_with_http_info

```ruby
begin
  # ListResources Catalog V2
  data, status_code, headers = api_instance.catalog_v2_list_resources_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CatalogListResourcesResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV2Api->catalog_v2_list_resources_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CatalogListResourcesResultV2**](CatalogListResourcesResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## catalog_v2_list_types

> <CatalogListTypesResultV2> catalog_v2_list_types

ListTypes Catalog V2

List all catalog types for an organisation, including those synced from external resources.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CatalogV2Api.new

begin
  # ListTypes Catalog V2
  result = api_instance.catalog_v2_list_types
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV2Api->catalog_v2_list_types: #{e}"
end
```

#### Using the catalog_v2_list_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CatalogListTypesResultV2>, Integer, Hash)> catalog_v2_list_types_with_http_info

```ruby
begin
  # ListTypes Catalog V2
  data, status_code, headers = api_instance.catalog_v2_list_types_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CatalogListTypesResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV2Api->catalog_v2_list_types_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CatalogListTypesResultV2**](CatalogListTypesResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## catalog_v2_show_entry

> <CatalogShowEntryResultV2> catalog_v2_show_entry(id)

ShowEntry Catalog V2

Show a single catalog entry.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CatalogV2Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | ID of this catalog entry

begin
  # ShowEntry Catalog V2
  result = api_instance.catalog_v2_show_entry(id)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV2Api->catalog_v2_show_entry: #{e}"
end
```

#### Using the catalog_v2_show_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CatalogShowEntryResultV2>, Integer, Hash)> catalog_v2_show_entry_with_http_info(id)

```ruby
begin
  # ShowEntry Catalog V2
  data, status_code, headers = api_instance.catalog_v2_show_entry_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CatalogShowEntryResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV2Api->catalog_v2_show_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of this catalog entry |  |

### Return type

[**CatalogShowEntryResultV2**](CatalogShowEntryResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## catalog_v2_show_type

> <CatalogShowTypeResultV2> catalog_v2_show_type(id)

ShowType Catalog V2

Show a single catalog type.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CatalogV2Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | ID of this catalog type

begin
  # ShowType Catalog V2
  result = api_instance.catalog_v2_show_type(id)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV2Api->catalog_v2_show_type: #{e}"
end
```

#### Using the catalog_v2_show_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CatalogShowTypeResultV2>, Integer, Hash)> catalog_v2_show_type_with_http_info(id)

```ruby
begin
  # ShowType Catalog V2
  data, status_code, headers = api_instance.catalog_v2_show_type_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CatalogShowTypeResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV2Api->catalog_v2_show_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of this catalog type |  |

### Return type

[**CatalogShowTypeResultV2**](CatalogShowTypeResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## catalog_v2_update_entry

> <CatalogUpdateEntryResultV2> catalog_v2_update_entry(id, catalog_update_entry_payload_v2)

UpdateEntry Catalog V2

Updates an existing catalog entry.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CatalogV2Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | ID of this catalog entry
catalog_update_entry_payload_v2 = IncidentIoSdk::CatalogUpdateEntryPayloadV2.new({attribute_values: { key: IncidentIoSdk::EngineParamBindingPayloadV2.new}, name: 'Primary On-call'}) # CatalogUpdateEntryPayloadV2 | 

begin
  # UpdateEntry Catalog V2
  result = api_instance.catalog_v2_update_entry(id, catalog_update_entry_payload_v2)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV2Api->catalog_v2_update_entry: #{e}"
end
```

#### Using the catalog_v2_update_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CatalogUpdateEntryResultV2>, Integer, Hash)> catalog_v2_update_entry_with_http_info(id, catalog_update_entry_payload_v2)

```ruby
begin
  # UpdateEntry Catalog V2
  data, status_code, headers = api_instance.catalog_v2_update_entry_with_http_info(id, catalog_update_entry_payload_v2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CatalogUpdateEntryResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV2Api->catalog_v2_update_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of this catalog entry |  |
| **catalog_update_entry_payload_v2** | [**CatalogUpdateEntryPayloadV2**](CatalogUpdateEntryPayloadV2.md) |  |  |

### Return type

[**CatalogUpdateEntryResultV2**](CatalogUpdateEntryResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## catalog_v2_update_type

> <CatalogUpdateTypeResultV2> catalog_v2_update_type(id, catalog_update_type_payload_v2)

UpdateType Catalog V2

Updates an existing catalog type. The schema must be updated using the UpdateTypeSchema endpoint.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CatalogV2Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | ID of this catalog type
catalog_update_type_payload_v2 = IncidentIoSdk::CatalogUpdateTypePayloadV2.new({description: 'Represents Kubernetes clusters that we run inside of GKE.', name: 'Kubernetes Cluster'}) # CatalogUpdateTypePayloadV2 | 

begin
  # UpdateType Catalog V2
  result = api_instance.catalog_v2_update_type(id, catalog_update_type_payload_v2)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV2Api->catalog_v2_update_type: #{e}"
end
```

#### Using the catalog_v2_update_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CatalogUpdateTypeResultV2>, Integer, Hash)> catalog_v2_update_type_with_http_info(id, catalog_update_type_payload_v2)

```ruby
begin
  # UpdateType Catalog V2
  data, status_code, headers = api_instance.catalog_v2_update_type_with_http_info(id, catalog_update_type_payload_v2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CatalogUpdateTypeResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV2Api->catalog_v2_update_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of this catalog type |  |
| **catalog_update_type_payload_v2** | [**CatalogUpdateTypePayloadV2**](CatalogUpdateTypePayloadV2.md) |  |  |

### Return type

[**CatalogUpdateTypeResultV2**](CatalogUpdateTypeResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## catalog_v2_update_type_schema

> <CatalogUpdateTypeSchemaResultV2> catalog_v2_update_type_schema(id, catalog_update_type_schema_payload_v2)

UpdateTypeSchema Catalog V2

Update an existing catalog types schema, adding or removing attributes.  Updating the schema is handled separately from creating and updating types, so that you don't have to worry about dependencies between types. For example, if type A has an attribute that relies on type B, you would have to create type B first.  By allowing the creation of types without a schema, they can be created in any order, but it means that you need to make a separate call to this endpoint to update the schema.

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::CatalogV2Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | ID of this catalog type
catalog_update_type_schema_payload_v2 = IncidentIoSdk::CatalogUpdateTypeSchemaPayloadV2.new({attributes: [{"array": false, "backlink_attribute": "abc123", "id": "01GW2G3V0S59R238FAHPDS1R66", "mode": "manual", "name": "tier", "path": [{"attribute_id": "abc123"}], "type": "Custom[\"Service\"]"}], version: 1}) # CatalogUpdateTypeSchemaPayloadV2 | 

begin
  # UpdateTypeSchema Catalog V2
  result = api_instance.catalog_v2_update_type_schema(id, catalog_update_type_schema_payload_v2)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV2Api->catalog_v2_update_type_schema: #{e}"
end
```

#### Using the catalog_v2_update_type_schema_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CatalogUpdateTypeSchemaResultV2>, Integer, Hash)> catalog_v2_update_type_schema_with_http_info(id, catalog_update_type_schema_payload_v2)

```ruby
begin
  # UpdateTypeSchema Catalog V2
  data, status_code, headers = api_instance.catalog_v2_update_type_schema_with_http_info(id, catalog_update_type_schema_payload_v2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CatalogUpdateTypeSchemaResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling CatalogV2Api->catalog_v2_update_type_schema_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of this catalog type |  |
| **catalog_update_type_schema_payload_v2** | [**CatalogUpdateTypeSchemaPayloadV2**](CatalogUpdateTypeSchemaPayloadV2.md) |  |  |

### Return type

[**CatalogUpdateTypeSchemaResultV2**](CatalogUpdateTypeSchemaResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

