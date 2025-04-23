=begin
#incident.io

#This is the API reference for incident.io.  It documents available API endpoints, provides examples of how to use it, and instructions around things like authentication and error handling.  The API is hosted at:  - https://api.incident.io/  And you will need to create an API key via your [incident.io dashboard](https://app.incident.io/settings/api-keys) to make requests.  # Making requests  Here are the key concepts required to make requests to the incident.io API.  ## Authentication  For all requests made to the incident.io API, you'll need an API key.  To create an API key, head to the incident dashboard and visit [API keys](https://app.incident.io/settings/api-keys). When you create the key, you'll be able to choose what actions it can take for your account: choose carefully, as those roles can only be set when you first create the key. We'll only show you the token once, so make sure you store it somewhere safe.  API keys are global to your incident.io account, and can be managed by anyone who has the right permissions. We display the user that created the API key, and the API key will remain valid if that user becomes deactivated.  Once you have the key, you should make requests to the API that set the `Authorization` request header using a \"Bearer\" authentication scheme:  ``` Authorization: Bearer <YOUR_API_KEY> ```  ## Rate Limits  The incident.io API enforces rate limits to ensure consistent performance for all users.  The default rate limit is 1200 requests/minute per API key. This limit applies to most endpoints across the API.  Some endpoints have lower rate limits, particularly those that interact with external third-party systems that impose their own limitations. These specific limits vary by endpoint, and we recommend relying on the rate-limit error responses to understand usage patterns and implement appropriate retry strategies.  When you exceed a rate limit, the API will respond with a `429 Too Many Requests` status code, along with a JSON response that includes information about the limit and when you can retry:  ```json {     \"type\": \"too_many_requests\",     \"status\": 429,     \"request_id\": \"b839a403-7704-41c1-bf6a-39a2d68caefa\",     \"rate_limit\": {         \"name\": \"api_key_name\",         \"limit\": 1200,         \"remaining\": 0,         \"retry_after\": \"Thu, 17 Apr 2025 11:17:18 UTC\"     },     \"errors\": [         {             \"code\": \"too_many_requests\",             \"message\": \"Too many requests hit the API too quickly. We recommend an exponential backoff of your requests.\"         }     ] } ```  The response includes: * The name of the API key (`name`) * The bucket limit (`limit`) * The number of requests remaining (`remaining`) * When you can retry requests (`retry_after`)  ## Errors  We use standard HTTP response codes to indicate the status or failure of API requests.  The API response body will be JSON, and contain more detailed information on the nature of the error.  An example error when a request is made without an API key:  ```json {   \"type\": \"authentication_error\",   \"status\": 401,   \"request_id\": \"8e3cc412-b49d-4957-9073-2c19d2c61804\",   \"errors\": [     {       \"code\": \"missing_authorization_material\",       \"message\": \"No authorization material provided in request\"     }   ] } ```  Note that the error:  - Contains the HTTP status (`401`) - References the type of error (`authentication_error`) - Includes a `request_id` that can be provided to incident.io support to help  debug questions with your API request - Provides a list of individual errors, which go into detail about why the error  occurred  The most common error will be a 422 Validation Error, which is returned when the request was rejected due to failing validations.  These errors look like this:  ```json {   \"type\": \"validation_error\",   \"status\": 422,   \"request_id\": \"631766c4-4afd-4803-997c-cd700928fa4b\",   \"errors\": [     {       \"code\": \"is_required\",       \"message\": \"A severity is required to open an incident\",       \"source\": {         \"field\": \"severity_id\"       }     }   ] } ```  This error is caused by not providing a severity identifier, which should be at the `severity_id` field of the request payload. Errors like these can be mapped to forms, should you be integrating with the API from a user-interface.  ## Compatibility  We won't make breaking changes to existing API services or endpoints, but will expect integrators to upgrade themselves to the latest API endpoints within 3 months of us deprecating the old service.  We will make changes that are considered backwards compatible, which include:  - Adding new API endpoints and services - Adding new properties to responses from existing API endpoints - Reordering properties returned from existing API endpoints - Adding optional request parameters to existing API endpoints - Altering the format or length of IDs - Adding new values to enums  It is important that clients are robust to these changes, to ensure reliable integrations.  As an example, if you are generating a client using an openapi-generator, ensure the generated client is configured to support unknown enum values, often configured via the `enumUnknownDefaultCase` parameter.  When breaking changes are unavoidable, we'll create a new service version on a separate path, and run them in parallel.  For example:  - https://api.incident.io/v1/incidents - https://api.incident.io/v2/incidents  For any questions, email support@incident.io. 

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module IncidentIoSdk
  class IncidentsV2Api
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Incidents V2
    # Create a new incident.  Note that if the incident mode is set to \"retrospective\" then the new incident will not be announced in Slack. 
    # @param incidents_create_payload_v2 [IncidentsCreatePayloadV2] 
    # @param [Hash] opts the optional parameters
    # @return [IncidentsCreateResultV2]
    def incidents_v2_create(incidents_create_payload_v2, opts = {})
      data, _status_code, _headers = incidents_v2_create_with_http_info(incidents_create_payload_v2, opts)
      data
    end

    # Create Incidents V2
    # Create a new incident.  Note that if the incident mode is set to \&quot;retrospective\&quot; then the new incident will not be announced in Slack. 
    # @param incidents_create_payload_v2 [IncidentsCreatePayloadV2] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IncidentsCreateResultV2, Integer, Hash)>] IncidentsCreateResultV2 data, response status code and response headers
    def incidents_v2_create_with_http_info(incidents_create_payload_v2, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentsV2Api.incidents_v2_create ...'
      end
      # verify the required parameter 'incidents_create_payload_v2' is set
      if @api_client.config.client_side_validation && incidents_create_payload_v2.nil?
        fail ArgumentError, "Missing the required parameter 'incidents_create_payload_v2' when calling IncidentsV2Api.incidents_v2_create"
      end
      # resource path
      local_var_path = '/v2/incidents'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(incidents_create_payload_v2)

      # return_type
      return_type = opts[:debug_return_type] || 'IncidentsCreateResultV2'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"IncidentsV2Api.incidents_v2_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IncidentsV2Api#incidents_v2_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit Incidents V2
    # Edit an existing incident.  This endpoint allows you to edit the properties of an existing incident: e.g. set the severity or update custom fields.  When using this endpoint, only fields that are provided will be edited (omitted fields will be ignored). 
    # @param id [String] The unique identifier of the incident that you want to edit
    # @param incidents_edit_payload_v2 [IncidentsEditPayloadV2] 
    # @param [Hash] opts the optional parameters
    # @return [IncidentsEditResultV2]
    def incidents_v2_edit(id, incidents_edit_payload_v2, opts = {})
      data, _status_code, _headers = incidents_v2_edit_with_http_info(id, incidents_edit_payload_v2, opts)
      data
    end

    # Edit Incidents V2
    # Edit an existing incident.  This endpoint allows you to edit the properties of an existing incident: e.g. set the severity or update custom fields.  When using this endpoint, only fields that are provided will be edited (omitted fields will be ignored). 
    # @param id [String] The unique identifier of the incident that you want to edit
    # @param incidents_edit_payload_v2 [IncidentsEditPayloadV2] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IncidentsEditResultV2, Integer, Hash)>] IncidentsEditResultV2 data, response status code and response headers
    def incidents_v2_edit_with_http_info(id, incidents_edit_payload_v2, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentsV2Api.incidents_v2_edit ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling IncidentsV2Api.incidents_v2_edit"
      end
      # verify the required parameter 'incidents_edit_payload_v2' is set
      if @api_client.config.client_side_validation && incidents_edit_payload_v2.nil?
        fail ArgumentError, "Missing the required parameter 'incidents_edit_payload_v2' when calling IncidentsV2Api.incidents_v2_edit"
      end
      # resource path
      local_var_path = '/v2/incidents/{id}/actions/edit'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(incidents_edit_payload_v2)

      # return_type
      return_type = opts[:debug_return_type] || 'IncidentsEditResultV2'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"IncidentsV2Api.incidents_v2_edit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IncidentsV2Api#incidents_v2_edit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Incidents V2
    # List all incidents for an organisation.  This endpoint supports a number of filters, which can help find incidents matching certain criteria.  Filters are provided as query parameters, but due to the dynamic nature of what you can query by (different accounts have different custom fields, statuses, etc) they are more complex than most.  The maximum page size that can be requested is 250.  To help, here are some exemplar curl requests with a human description of what they search for.  Note that: - Filters may be used together, and the result will be incidents that match all filters. - IDs are normally in UUID format, but have been replaced with shorter strings to improve readability. - All query parameters must be URI encoded.  ### By status  With status of id=ABC, find all incidents that are set to that status:    curl --get 'https://api.incident.io/v2/incidents' \\    --data 'status[one_of]=ABC'  Or all incidents that are not set to status with id=ABC:    curl --get 'https://api.incident.io/v2/incidents' \\    --data 'status[not_in]=ABC'  ### By created_at or updated_at  Find all incidents that follow specified date parameters for created_at and updated_at fields. Possible values are \"gte\" (greater than or equal to) and \"lte\" (less than or equal to). The following example finds all incidents created before or on 2021-01-02T00:00:00Z:    curl --get 'https://api.incident.io/v2/incidents' \\    --data 'created_at[lte]=2021-01-02'  ### By status category  Find all incidents that are in a status category. Possible values are \"triage\", \"declined\", \"merged\", \"canceled\", \"live\", \"learning\" and \"closed\":    curl --get 'https://api.incident.io/v2/incidents' \\    --data 'status_category[one_of]=live'  Or all incidents that are not in a status category:    curl --get 'https://api.incident.io/v2/incidents' \\    --data 'status_category[not_in]=live'   ### By severity  With severity of id=ABC, find all incidents that are set to that severity:    curl --get 'https://api.incident.io/v2/incidents' \\    --data 'severity[one_of]=ABC'  Or all incidents where severity rank is greater-than-or-equal-to the rank of severity id=ABC:    curl --get 'https://api.incident.io/v2/incidents' \\    --data 'severity[gte]=ABC'  Or all incidents where severity rank is less-than-or-equal-to the rank of severity id=ABC:    curl --get 'https://api.incident.io/v2/incidents' \\    --data 'severity[lte]=ABC'  ### By incident type  With incident type of id=ABC, find all incidents that are of that type:    curl --get 'https://api.incident.io/v2/incidents' \\    --data 'incident_type[one_of]=ABC'  Or all incidents not of that type:    curl --get 'https://api.incident.io/v2/incidents' \\    --data 'incident_type[not_in]=ABC'  ### By incident mode  By default, we return standard and retrospective incidents. This means that test and tutorial incidents are filtered out. To override this behaviour, you can use the mode filter to specify which modes you want to get.  To find incidents of all modes:    curl --get 'https://api.incident.io/v2/incidents' \\    --data 'mode[one_of]=standard&mode[one_of]=retrospective&mode[one_of]=test&mode[one_of]=tutorial'  To find just test incidents:    curl --get 'https://api.incident.io/v2/incidents' \\    --data 'mode[one_of]=test'   ### By incident role  Roles and custom fields have another nested layer in the query parameter, to account for operations against any of the roles or custom fields created in the account.  With incident role id=ABC, find all incidents where that role is unset:    curl --get 'https://api.incident.io/v2/incidents' \\    --data 'incident_role[ABC][is_blank]=true'  Or where the role has been set:    curl --get 'https://api.incident.io/v2/incidents' \\    --data 'incident_role[ABC][is_blank]=false'  ### By option custom fields  With an option custom field id=ABC, all incidents that have field ABC set to the custom field option of id=XYZ:    curl \\    --get 'https://api.incident.io/v2/incidents' \\    --data 'custom_field[ABC][one_of]=XYZ'  Or all incidents that do not have custom field id=ABC set to option id=XYZ:    curl \\    --get 'https://api.incident.io/v2/incidents' \\    --data 'custom_field[ABC][not_in]=XYZ' 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size number of records to return (default to 25)
    # @option opts [String] :after An incident&#39;s ID. This endpoint will return a list of incidents after this ID in relation to the API response order.
    # @option opts [Hash<String, Array<String>>] :status Filter on incident status. The accepted operators are &#39;one_of&#39;, or &#39;not_in&#39;.
    # @option opts [Hash<String, Array<String>>] :status_category Filter on the category of the incidents status. The accepted operators are &#39;one_of&#39;, or &#39;not_in&#39;.
    # @option opts [Hash<String, Array<String>>] :created_at Filter on incident created at timestamp. The accepted operators are &#39;gte&#39;, &#39;lte&#39; and &#39;date_range&#39;.
    # @option opts [Hash<String, Array<String>>] :updated_at Filter on incident updated at timestamp. The accepted operators are &#39;gte&#39;, &#39;lte&#39; and &#39;date_range&#39;.
    # @option opts [Hash<String, Array<String>>] :severity Filter on incident severity. The accepted operators are &#39;one_of&#39;, &#39;not_in&#39;, &#39;gte&#39;, &#39;lte&#39;.
    # @option opts [Hash<String, Array<String>>] :incident_type Filter on incident type. The accepted operators are &#39;one_of, or &#39;not_in&#39;.
    # @option opts [Hash<String, Hash<String, Array<String>>>] :incident_role Filter on an incident role. Role ID should be sent, followed by the operator and values. The accepted operators are &#39;one_of&#39;, &#39;is_blank&#39;.
    # @option opts [Hash<String, Hash<String, Array<String>>>] :custom_field Filter on an incident custom field. Custom field ID should be sent, followed by the operator and values. Accepted operator will depend on the custom field type.
    # @option opts [Hash<String, Array<String>>] :mode Filter on incident mode. The accepted operator is &#39;one_of&#39;.  If this is not provided, this value defaults to &#x60;{\&quot;one_of\&quot;: [\&quot;standard\&quot;, \&quot;retrospective\&quot;] }&#x60;, meaning that test and tutorial incidents are not included.
    # @return [IncidentsListResultV2]
    def incidents_v2_list(opts = {})
      data, _status_code, _headers = incidents_v2_list_with_http_info(opts)
      data
    end

    # List Incidents V2
    # List all incidents for an organisation.  This endpoint supports a number of filters, which can help find incidents matching certain criteria.  Filters are provided as query parameters, but due to the dynamic nature of what you can query by (different accounts have different custom fields, statuses, etc) they are more complex than most.  The maximum page size that can be requested is 250.  To help, here are some exemplar curl requests with a human description of what they search for.  Note that: - Filters may be used together, and the result will be incidents that match all filters. - IDs are normally in UUID format, but have been replaced with shorter strings to improve readability. - All query parameters must be URI encoded.  ### By status  With status of id&#x3D;ABC, find all incidents that are set to that status:    curl --get &#39;https://api.incident.io/v2/incidents&#39; \\    --data &#39;status[one_of]&#x3D;ABC&#39;  Or all incidents that are not set to status with id&#x3D;ABC:    curl --get &#39;https://api.incident.io/v2/incidents&#39; \\    --data &#39;status[not_in]&#x3D;ABC&#39;  ### By created_at or updated_at  Find all incidents that follow specified date parameters for created_at and updated_at fields. Possible values are \&quot;gte\&quot; (greater than or equal to) and \&quot;lte\&quot; (less than or equal to). The following example finds all incidents created before or on 2021-01-02T00:00:00Z:    curl --get &#39;https://api.incident.io/v2/incidents&#39; \\    --data &#39;created_at[lte]&#x3D;2021-01-02&#39;  ### By status category  Find all incidents that are in a status category. Possible values are \&quot;triage\&quot;, \&quot;declined\&quot;, \&quot;merged\&quot;, \&quot;canceled\&quot;, \&quot;live\&quot;, \&quot;learning\&quot; and \&quot;closed\&quot;:    curl --get &#39;https://api.incident.io/v2/incidents&#39; \\    --data &#39;status_category[one_of]&#x3D;live&#39;  Or all incidents that are not in a status category:    curl --get &#39;https://api.incident.io/v2/incidents&#39; \\    --data &#39;status_category[not_in]&#x3D;live&#39;   ### By severity  With severity of id&#x3D;ABC, find all incidents that are set to that severity:    curl --get &#39;https://api.incident.io/v2/incidents&#39; \\    --data &#39;severity[one_of]&#x3D;ABC&#39;  Or all incidents where severity rank is greater-than-or-equal-to the rank of severity id&#x3D;ABC:    curl --get &#39;https://api.incident.io/v2/incidents&#39; \\    --data &#39;severity[gte]&#x3D;ABC&#39;  Or all incidents where severity rank is less-than-or-equal-to the rank of severity id&#x3D;ABC:    curl --get &#39;https://api.incident.io/v2/incidents&#39; \\    --data &#39;severity[lte]&#x3D;ABC&#39;  ### By incident type  With incident type of id&#x3D;ABC, find all incidents that are of that type:    curl --get &#39;https://api.incident.io/v2/incidents&#39; \\    --data &#39;incident_type[one_of]&#x3D;ABC&#39;  Or all incidents not of that type:    curl --get &#39;https://api.incident.io/v2/incidents&#39; \\    --data &#39;incident_type[not_in]&#x3D;ABC&#39;  ### By incident mode  By default, we return standard and retrospective incidents. This means that test and tutorial incidents are filtered out. To override this behaviour, you can use the mode filter to specify which modes you want to get.  To find incidents of all modes:    curl --get &#39;https://api.incident.io/v2/incidents&#39; \\    --data &#39;mode[one_of]&#x3D;standard&amp;mode[one_of]&#x3D;retrospective&amp;mode[one_of]&#x3D;test&amp;mode[one_of]&#x3D;tutorial&#39;  To find just test incidents:    curl --get &#39;https://api.incident.io/v2/incidents&#39; \\    --data &#39;mode[one_of]&#x3D;test&#39;   ### By incident role  Roles and custom fields have another nested layer in the query parameter, to account for operations against any of the roles or custom fields created in the account.  With incident role id&#x3D;ABC, find all incidents where that role is unset:    curl --get &#39;https://api.incident.io/v2/incidents&#39; \\    --data &#39;incident_role[ABC][is_blank]&#x3D;true&#39;  Or where the role has been set:    curl --get &#39;https://api.incident.io/v2/incidents&#39; \\    --data &#39;incident_role[ABC][is_blank]&#x3D;false&#39;  ### By option custom fields  With an option custom field id&#x3D;ABC, all incidents that have field ABC set to the custom field option of id&#x3D;XYZ:    curl \\    --get &#39;https://api.incident.io/v2/incidents&#39; \\    --data &#39;custom_field[ABC][one_of]&#x3D;XYZ&#39;  Or all incidents that do not have custom field id&#x3D;ABC set to option id&#x3D;XYZ:    curl \\    --get &#39;https://api.incident.io/v2/incidents&#39; \\    --data &#39;custom_field[ABC][not_in]&#x3D;XYZ&#39; 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size number of records to return (default to 25)
    # @option opts [String] :after An incident&#39;s ID. This endpoint will return a list of incidents after this ID in relation to the API response order.
    # @option opts [Hash<String, Array<String>>] :status Filter on incident status. The accepted operators are &#39;one_of&#39;, or &#39;not_in&#39;.
    # @option opts [Hash<String, Array<String>>] :status_category Filter on the category of the incidents status. The accepted operators are &#39;one_of&#39;, or &#39;not_in&#39;.
    # @option opts [Hash<String, Array<String>>] :created_at Filter on incident created at timestamp. The accepted operators are &#39;gte&#39;, &#39;lte&#39; and &#39;date_range&#39;.
    # @option opts [Hash<String, Array<String>>] :updated_at Filter on incident updated at timestamp. The accepted operators are &#39;gte&#39;, &#39;lte&#39; and &#39;date_range&#39;.
    # @option opts [Hash<String, Array<String>>] :severity Filter on incident severity. The accepted operators are &#39;one_of&#39;, &#39;not_in&#39;, &#39;gte&#39;, &#39;lte&#39;.
    # @option opts [Hash<String, Array<String>>] :incident_type Filter on incident type. The accepted operators are &#39;one_of, or &#39;not_in&#39;.
    # @option opts [Hash<String, Hash<String, Array<String>>>] :incident_role Filter on an incident role. Role ID should be sent, followed by the operator and values. The accepted operators are &#39;one_of&#39;, &#39;is_blank&#39;.
    # @option opts [Hash<String, Hash<String, Array<String>>>] :custom_field Filter on an incident custom field. Custom field ID should be sent, followed by the operator and values. Accepted operator will depend on the custom field type.
    # @option opts [Hash<String, Array<String>>] :mode Filter on incident mode. The accepted operator is &#39;one_of&#39;.  If this is not provided, this value defaults to &#x60;{\&quot;one_of\&quot;: [\&quot;standard\&quot;, \&quot;retrospective\&quot;] }&#x60;, meaning that test and tutorial incidents are not included.
    # @return [Array<(IncidentsListResultV2, Integer, Hash)>] IncidentsListResultV2 data, response status code and response headers
    def incidents_v2_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentsV2Api.incidents_v2_list ...'
      end
      # resource path
      local_var_path = '/v2/incidents'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'status_category'] = opts[:'status_category'] if !opts[:'status_category'].nil?
      query_params[:'created_at'] = opts[:'created_at'] if !opts[:'created_at'].nil?
      query_params[:'updated_at'] = opts[:'updated_at'] if !opts[:'updated_at'].nil?
      query_params[:'severity'] = opts[:'severity'] if !opts[:'severity'].nil?
      query_params[:'incident_type'] = opts[:'incident_type'] if !opts[:'incident_type'].nil?
      query_params[:'incident_role'] = opts[:'incident_role'] if !opts[:'incident_role'].nil?
      query_params[:'custom_field'] = opts[:'custom_field'] if !opts[:'custom_field'].nil?
      query_params[:'mode'] = opts[:'mode'] if !opts[:'mode'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'IncidentsListResultV2'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"IncidentsV2Api.incidents_v2_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IncidentsV2Api#incidents_v2_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show Incidents V2
    # Get a single incident.  The ID supplied can be either the incident's full ID, or the numeric part of its reference. For example, to get INC-123, you could use either its full ID or:    curl \\    --get 'https://api.incident.io/v2/incidents/123 
    # @param id [String] Unique identifier for the incident
    # @param [Hash] opts the optional parameters
    # @return [IncidentsShowResultV2]
    def incidents_v2_show(id, opts = {})
      data, _status_code, _headers = incidents_v2_show_with_http_info(id, opts)
      data
    end

    # Show Incidents V2
    # Get a single incident.  The ID supplied can be either the incident&#39;s full ID, or the numeric part of its reference. For example, to get INC-123, you could use either its full ID or:    curl \\    --get &#39;https://api.incident.io/v2/incidents/123 
    # @param id [String] Unique identifier for the incident
    # @param [Hash] opts the optional parameters
    # @return [Array<(IncidentsShowResultV2, Integer, Hash)>] IncidentsShowResultV2 data, response status code and response headers
    def incidents_v2_show_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentsV2Api.incidents_v2_show ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling IncidentsV2Api.incidents_v2_show"
      end
      # resource path
      local_var_path = '/v2/incidents/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'IncidentsShowResultV2'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"IncidentsV2Api.incidents_v2_show",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IncidentsV2Api#incidents_v2_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
