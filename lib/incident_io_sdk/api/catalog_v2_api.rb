=begin
#incident.io

#This is the API reference for incident.io.  It documents available API endpoints, provides examples of how to use it, and instructions around things like authentication and error handling.  The API is hosted at:  - https://api.incident.io/  And you will need to create an API key via your [incident.io dashboard](https://app.incident.io/settings/api-keys) to make requests.  # Making requests  Here are the key concepts required to make requests to the incident.io API.  ## Authentication  For all requests made to the incident.io API, you'll need an API key.  To create an API key, head to the incident dashboard and visit [API keys](https://app.incident.io/settings/api-keys). When you create the key, you'll be able to choose what actions it can take for your account: choose carefully, as those roles can only be set when you first create the key. We'll only show you the token once, so make sure you store it somewhere safe.  API keys are global to your incident.io account, and can be managed by anyone who has the right permissions. We display the user that created the API key, and the API key will remain valid if that user becomes deactivated.  Once you have the key, you should make requests to the API that set the `Authorization` request header using a \"Bearer\" authentication scheme:  ``` Authorization: Bearer <YOUR_API_KEY> ```  ## Rate Limits  The incident.io API enforces rate limits to ensure consistent performance for all users.  The default rate limit is 1200 requests/minute per API key. This limit applies to most endpoints across the API.  Some endpoints have lower rate limits, particularly those that interact with external third-party systems that impose their own limitations. These specific limits vary by endpoint, and we recommend relying on the rate-limit error responses to understand usage patterns and implement appropriate retry strategies.  When you exceed a rate limit, the API will respond with a `429 Too Many Requests` status code, along with a JSON response that includes information about the limit and when you can retry:  ```json {     \"type\": \"too_many_requests\",     \"status\": 429,     \"request_id\": \"b839a403-7704-41c1-bf6a-39a2d68caefa\",     \"rate_limit\": {         \"name\": \"api_key_name\",         \"limit\": 1200,         \"remaining\": 0,         \"retry_after\": \"Thu, 17 Apr 2025 11:17:18 UTC\"     },     \"errors\": [         {             \"code\": \"too_many_requests\",             \"message\": \"Too many requests hit the API too quickly. We recommend an exponential backoff of your requests.\"         }     ] } ```  The response includes: * The name of the API key (`name`) * The bucket limit (`limit`) * The number of requests remaining (`remaining`) * When you can retry requests (`retry_after`)  ## Errors  We use standard HTTP response codes to indicate the status or failure of API requests.  The API response body will be JSON, and contain more detailed information on the nature of the error.  An example error when a request is made without an API key:  ```json {   \"type\": \"authentication_error\",   \"status\": 401,   \"request_id\": \"8e3cc412-b49d-4957-9073-2c19d2c61804\",   \"errors\": [     {       \"code\": \"missing_authorization_material\",       \"message\": \"No authorization material provided in request\"     }   ] } ```  Note that the error:  - Contains the HTTP status (`401`) - References the type of error (`authentication_error`) - Includes a `request_id` that can be provided to incident.io support to help  debug questions with your API request - Provides a list of individual errors, which go into detail about why the error  occurred  The most common error will be a 422 Validation Error, which is returned when the request was rejected due to failing validations.  These errors look like this:  ```json {   \"type\": \"validation_error\",   \"status\": 422,   \"request_id\": \"631766c4-4afd-4803-997c-cd700928fa4b\",   \"errors\": [     {       \"code\": \"is_required\",       \"message\": \"A severity is required to open an incident\",       \"source\": {         \"field\": \"severity_id\"       }     }   ] } ```  This error is caused by not providing a severity identifier, which should be at the `severity_id` field of the request payload. Errors like these can be mapped to forms, should you be integrating with the API from a user-interface.  ## Compatibility  We won't make breaking changes to existing API services or endpoints, but will expect integrators to upgrade themselves to the latest API endpoints within 3 months of us deprecating the old service.  We will make changes that are considered backwards compatible, which include:  - Adding new API endpoints and services - Adding new properties to responses from existing API endpoints - Reordering properties returned from existing API endpoints - Adding optional request parameters to existing API endpoints - Altering the format or length of IDs - Adding new values to enums  It is important that clients are robust to these changes, to ensure reliable integrations.  As an example, if you are generating a client using an openapi-generator, ensure the generated client is configured to support unknown enum values, often configured via the `enumUnknownDefaultCase` parameter.  When breaking changes are unavoidable, we'll create a new service version on a separate path, and run them in parallel.  For example:  - https://api.incident.io/v1/incidents - https://api.incident.io/v2/incidents  For any questions, email support@incident.io. 

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module IncidentIoSdk
  class CatalogV2Api
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # CreateEntry Catalog V2
    # Create an entry within the catalog. We support a maximum of 50,000 entries per type.  If you call this API with a payload where the external_id and catalog_type_id match an existing entry, the existing entry will be updated.
    # @param catalog_create_entry_payload_v2 [CatalogCreateEntryPayloadV2] 
    # @param [Hash] opts the optional parameters
    # @return [CatalogCreateEntryResultV2]
    def catalog_v2_create_entry(catalog_create_entry_payload_v2, opts = {})
      data, _status_code, _headers = catalog_v2_create_entry_with_http_info(catalog_create_entry_payload_v2, opts)
      data
    end

    # CreateEntry Catalog V2
    # Create an entry within the catalog. We support a maximum of 50,000 entries per type.  If you call this API with a payload where the external_id and catalog_type_id match an existing entry, the existing entry will be updated.
    # @param catalog_create_entry_payload_v2 [CatalogCreateEntryPayloadV2] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CatalogCreateEntryResultV2, Integer, Hash)>] CatalogCreateEntryResultV2 data, response status code and response headers
    def catalog_v2_create_entry_with_http_info(catalog_create_entry_payload_v2, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CatalogV2Api.catalog_v2_create_entry ...'
      end
      # verify the required parameter 'catalog_create_entry_payload_v2' is set
      if @api_client.config.client_side_validation && catalog_create_entry_payload_v2.nil?
        fail ArgumentError, "Missing the required parameter 'catalog_create_entry_payload_v2' when calling CatalogV2Api.catalog_v2_create_entry"
      end
      # resource path
      local_var_path = '/v2/catalog_entries'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(catalog_create_entry_payload_v2)

      # return_type
      return_type = opts[:debug_return_type] || 'CatalogCreateEntryResultV2'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"CatalogV2Api.catalog_v2_create_entry",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogV2Api#catalog_v2_create_entry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # CreateType Catalog V2
    # Create a catalog type. The schema must be updated using the UpdateTypeSchema endpoint.
    # @param catalog_create_type_payload_v2 [CatalogCreateTypePayloadV2] 
    # @param [Hash] opts the optional parameters
    # @return [CatalogCreateTypeResultV2]
    def catalog_v2_create_type(catalog_create_type_payload_v2, opts = {})
      data, _status_code, _headers = catalog_v2_create_type_with_http_info(catalog_create_type_payload_v2, opts)
      data
    end

    # CreateType Catalog V2
    # Create a catalog type. The schema must be updated using the UpdateTypeSchema endpoint.
    # @param catalog_create_type_payload_v2 [CatalogCreateTypePayloadV2] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CatalogCreateTypeResultV2, Integer, Hash)>] CatalogCreateTypeResultV2 data, response status code and response headers
    def catalog_v2_create_type_with_http_info(catalog_create_type_payload_v2, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CatalogV2Api.catalog_v2_create_type ...'
      end
      # verify the required parameter 'catalog_create_type_payload_v2' is set
      if @api_client.config.client_side_validation && catalog_create_type_payload_v2.nil?
        fail ArgumentError, "Missing the required parameter 'catalog_create_type_payload_v2' when calling CatalogV2Api.catalog_v2_create_type"
      end
      # resource path
      local_var_path = '/v2/catalog_types'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(catalog_create_type_payload_v2)

      # return_type
      return_type = opts[:debug_return_type] || 'CatalogCreateTypeResultV2'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"CatalogV2Api.catalog_v2_create_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogV2Api#catalog_v2_create_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # DestroyEntry Catalog V2
    # Archives a catalog entry.
    # @param id [String] ID of this catalog entry
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def catalog_v2_destroy_entry(id, opts = {})
      catalog_v2_destroy_entry_with_http_info(id, opts)
      nil
    end

    # DestroyEntry Catalog V2
    # Archives a catalog entry.
    # @param id [String] ID of this catalog entry
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def catalog_v2_destroy_entry_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CatalogV2Api.catalog_v2_destroy_entry ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CatalogV2Api.catalog_v2_destroy_entry"
      end
      # resource path
      local_var_path = '/v2/catalog_entries/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"CatalogV2Api.catalog_v2_destroy_entry",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogV2Api#catalog_v2_destroy_entry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # DestroyType Catalog V2
    # Archives a catalog type and associated entries.
    # @param id [String] ID of this catalog type
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def catalog_v2_destroy_type(id, opts = {})
      catalog_v2_destroy_type_with_http_info(id, opts)
      nil
    end

    # DestroyType Catalog V2
    # Archives a catalog type and associated entries.
    # @param id [String] ID of this catalog type
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def catalog_v2_destroy_type_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CatalogV2Api.catalog_v2_destroy_type ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CatalogV2Api.catalog_v2_destroy_type"
      end
      # resource path
      local_var_path = '/v2/catalog_types/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"CatalogV2Api.catalog_v2_destroy_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogV2Api#catalog_v2_destroy_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # ListEntries Catalog V2
    # List entries for a catalog type.
    # @param catalog_type_id [String] ID of this catalog type
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Integer number of records to return (default to 25)
    # @option opts [String] :after An record&#39;s ID. This endpoint will return a list of records after this ID in relation to the API response order.
    # @return [CatalogListEntriesResultV2]
    def catalog_v2_list_entries(catalog_type_id, opts = {})
      data, _status_code, _headers = catalog_v2_list_entries_with_http_info(catalog_type_id, opts)
      data
    end

    # ListEntries Catalog V2
    # List entries for a catalog type.
    # @param catalog_type_id [String] ID of this catalog type
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Integer number of records to return (default to 25)
    # @option opts [String] :after An record&#39;s ID. This endpoint will return a list of records after this ID in relation to the API response order.
    # @return [Array<(CatalogListEntriesResultV2, Integer, Hash)>] CatalogListEntriesResultV2 data, response status code and response headers
    def catalog_v2_list_entries_with_http_info(catalog_type_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CatalogV2Api.catalog_v2_list_entries ...'
      end
      # verify the required parameter 'catalog_type_id' is set
      if @api_client.config.client_side_validation && catalog_type_id.nil?
        fail ArgumentError, "Missing the required parameter 'catalog_type_id' when calling CatalogV2Api.catalog_v2_list_entries"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 250
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling CatalogV2Api.catalog_v2_list_entries, must be smaller than or equal to 250.'
      end

      # resource path
      local_var_path = '/v2/catalog_entries'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'catalog_type_id'] = catalog_type_id
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CatalogListEntriesResultV2'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"CatalogV2Api.catalog_v2_list_entries",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogV2Api#catalog_v2_list_entries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # ListResources Catalog V2
    # List available engine resources for the catalog.  A resource represents a type of data that can be held within the catalog, so this endpoint can be used to see what attribute types can be used when updating the schema of a catalog type. 
    # @param [Hash] opts the optional parameters
    # @return [CatalogListResourcesResultV2]
    def catalog_v2_list_resources(opts = {})
      data, _status_code, _headers = catalog_v2_list_resources_with_http_info(opts)
      data
    end

    # ListResources Catalog V2
    # List available engine resources for the catalog.  A resource represents a type of data that can be held within the catalog, so this endpoint can be used to see what attribute types can be used when updating the schema of a catalog type. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CatalogListResourcesResultV2, Integer, Hash)>] CatalogListResourcesResultV2 data, response status code and response headers
    def catalog_v2_list_resources_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CatalogV2Api.catalog_v2_list_resources ...'
      end
      # resource path
      local_var_path = '/v2/catalog_resources'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CatalogListResourcesResultV2'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"CatalogV2Api.catalog_v2_list_resources",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogV2Api#catalog_v2_list_resources\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # ListTypes Catalog V2
    # List all catalog types for an organisation, including those synced from external resources.
    # @param [Hash] opts the optional parameters
    # @return [CatalogListTypesResultV2]
    def catalog_v2_list_types(opts = {})
      data, _status_code, _headers = catalog_v2_list_types_with_http_info(opts)
      data
    end

    # ListTypes Catalog V2
    # List all catalog types for an organisation, including those synced from external resources.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CatalogListTypesResultV2, Integer, Hash)>] CatalogListTypesResultV2 data, response status code and response headers
    def catalog_v2_list_types_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CatalogV2Api.catalog_v2_list_types ...'
      end
      # resource path
      local_var_path = '/v2/catalog_types'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CatalogListTypesResultV2'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"CatalogV2Api.catalog_v2_list_types",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogV2Api#catalog_v2_list_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # ShowEntry Catalog V2
    # Show a single catalog entry.
    # @param id [String] ID of this catalog entry
    # @param [Hash] opts the optional parameters
    # @return [CatalogShowEntryResultV2]
    def catalog_v2_show_entry(id, opts = {})
      data, _status_code, _headers = catalog_v2_show_entry_with_http_info(id, opts)
      data
    end

    # ShowEntry Catalog V2
    # Show a single catalog entry.
    # @param id [String] ID of this catalog entry
    # @param [Hash] opts the optional parameters
    # @return [Array<(CatalogShowEntryResultV2, Integer, Hash)>] CatalogShowEntryResultV2 data, response status code and response headers
    def catalog_v2_show_entry_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CatalogV2Api.catalog_v2_show_entry ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CatalogV2Api.catalog_v2_show_entry"
      end
      # resource path
      local_var_path = '/v2/catalog_entries/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CatalogShowEntryResultV2'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"CatalogV2Api.catalog_v2_show_entry",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogV2Api#catalog_v2_show_entry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # ShowType Catalog V2
    # Show a single catalog type.
    # @param id [String] ID of this catalog type
    # @param [Hash] opts the optional parameters
    # @return [CatalogShowTypeResultV2]
    def catalog_v2_show_type(id, opts = {})
      data, _status_code, _headers = catalog_v2_show_type_with_http_info(id, opts)
      data
    end

    # ShowType Catalog V2
    # Show a single catalog type.
    # @param id [String] ID of this catalog type
    # @param [Hash] opts the optional parameters
    # @return [Array<(CatalogShowTypeResultV2, Integer, Hash)>] CatalogShowTypeResultV2 data, response status code and response headers
    def catalog_v2_show_type_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CatalogV2Api.catalog_v2_show_type ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CatalogV2Api.catalog_v2_show_type"
      end
      # resource path
      local_var_path = '/v2/catalog_types/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CatalogShowTypeResultV2'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"CatalogV2Api.catalog_v2_show_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogV2Api#catalog_v2_show_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # UpdateEntry Catalog V2
    # Updates an existing catalog entry.
    # @param id [String] ID of this catalog entry
    # @param catalog_update_entry_payload_v2 [CatalogUpdateEntryPayloadV2] 
    # @param [Hash] opts the optional parameters
    # @return [CatalogUpdateEntryResultV2]
    def catalog_v2_update_entry(id, catalog_update_entry_payload_v2, opts = {})
      data, _status_code, _headers = catalog_v2_update_entry_with_http_info(id, catalog_update_entry_payload_v2, opts)
      data
    end

    # UpdateEntry Catalog V2
    # Updates an existing catalog entry.
    # @param id [String] ID of this catalog entry
    # @param catalog_update_entry_payload_v2 [CatalogUpdateEntryPayloadV2] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CatalogUpdateEntryResultV2, Integer, Hash)>] CatalogUpdateEntryResultV2 data, response status code and response headers
    def catalog_v2_update_entry_with_http_info(id, catalog_update_entry_payload_v2, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CatalogV2Api.catalog_v2_update_entry ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CatalogV2Api.catalog_v2_update_entry"
      end
      # verify the required parameter 'catalog_update_entry_payload_v2' is set
      if @api_client.config.client_side_validation && catalog_update_entry_payload_v2.nil?
        fail ArgumentError, "Missing the required parameter 'catalog_update_entry_payload_v2' when calling CatalogV2Api.catalog_v2_update_entry"
      end
      # resource path
      local_var_path = '/v2/catalog_entries/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(catalog_update_entry_payload_v2)

      # return_type
      return_type = opts[:debug_return_type] || 'CatalogUpdateEntryResultV2'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"CatalogV2Api.catalog_v2_update_entry",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogV2Api#catalog_v2_update_entry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # UpdateType Catalog V2
    # Updates an existing catalog type. The schema must be updated using the UpdateTypeSchema endpoint.
    # @param id [String] ID of this catalog type
    # @param catalog_update_type_payload_v2 [CatalogUpdateTypePayloadV2] 
    # @param [Hash] opts the optional parameters
    # @return [CatalogUpdateTypeResultV2]
    def catalog_v2_update_type(id, catalog_update_type_payload_v2, opts = {})
      data, _status_code, _headers = catalog_v2_update_type_with_http_info(id, catalog_update_type_payload_v2, opts)
      data
    end

    # UpdateType Catalog V2
    # Updates an existing catalog type. The schema must be updated using the UpdateTypeSchema endpoint.
    # @param id [String] ID of this catalog type
    # @param catalog_update_type_payload_v2 [CatalogUpdateTypePayloadV2] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CatalogUpdateTypeResultV2, Integer, Hash)>] CatalogUpdateTypeResultV2 data, response status code and response headers
    def catalog_v2_update_type_with_http_info(id, catalog_update_type_payload_v2, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CatalogV2Api.catalog_v2_update_type ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CatalogV2Api.catalog_v2_update_type"
      end
      # verify the required parameter 'catalog_update_type_payload_v2' is set
      if @api_client.config.client_side_validation && catalog_update_type_payload_v2.nil?
        fail ArgumentError, "Missing the required parameter 'catalog_update_type_payload_v2' when calling CatalogV2Api.catalog_v2_update_type"
      end
      # resource path
      local_var_path = '/v2/catalog_types/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(catalog_update_type_payload_v2)

      # return_type
      return_type = opts[:debug_return_type] || 'CatalogUpdateTypeResultV2'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"CatalogV2Api.catalog_v2_update_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogV2Api#catalog_v2_update_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # UpdateTypeSchema Catalog V2
    # Update an existing catalog types schema, adding or removing attributes.  Updating the schema is handled separately from creating and updating types, so that you don't have to worry about dependencies between types. For example, if type A has an attribute that relies on type B, you would have to create type B first.  By allowing the creation of types without a schema, they can be created in any order, but it means that you need to make a separate call to this endpoint to update the schema.
    # @param id [String] ID of this catalog type
    # @param catalog_update_type_schema_payload_v2 [CatalogUpdateTypeSchemaPayloadV2] 
    # @param [Hash] opts the optional parameters
    # @return [CatalogUpdateTypeSchemaResultV2]
    def catalog_v2_update_type_schema(id, catalog_update_type_schema_payload_v2, opts = {})
      data, _status_code, _headers = catalog_v2_update_type_schema_with_http_info(id, catalog_update_type_schema_payload_v2, opts)
      data
    end

    # UpdateTypeSchema Catalog V2
    # Update an existing catalog types schema, adding or removing attributes.  Updating the schema is handled separately from creating and updating types, so that you don&#39;t have to worry about dependencies between types. For example, if type A has an attribute that relies on type B, you would have to create type B first.  By allowing the creation of types without a schema, they can be created in any order, but it means that you need to make a separate call to this endpoint to update the schema.
    # @param id [String] ID of this catalog type
    # @param catalog_update_type_schema_payload_v2 [CatalogUpdateTypeSchemaPayloadV2] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CatalogUpdateTypeSchemaResultV2, Integer, Hash)>] CatalogUpdateTypeSchemaResultV2 data, response status code and response headers
    def catalog_v2_update_type_schema_with_http_info(id, catalog_update_type_schema_payload_v2, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CatalogV2Api.catalog_v2_update_type_schema ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CatalogV2Api.catalog_v2_update_type_schema"
      end
      # verify the required parameter 'catalog_update_type_schema_payload_v2' is set
      if @api_client.config.client_side_validation && catalog_update_type_schema_payload_v2.nil?
        fail ArgumentError, "Missing the required parameter 'catalog_update_type_schema_payload_v2' when calling CatalogV2Api.catalog_v2_update_type_schema"
      end
      # resource path
      local_var_path = '/v2/catalog_types/{id}/actions/update_schema'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(catalog_update_type_schema_payload_v2)

      # return_type
      return_type = opts[:debug_return_type] || 'CatalogUpdateTypeSchemaResultV2'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"CatalogV2Api.catalog_v2_update_type_schema",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogV2Api#catalog_v2_update_type_schema\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
