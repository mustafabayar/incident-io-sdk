=begin
#incident.io

#This is the API reference for incident.io.  It documents available API endpoints, provides examples of how to use it, and instructions around things like authentication and error handling.  The API is hosted at:  - https://api.incident.io/  And you will need to create an API key via your [incident.io dashboard](https://app.incident.io/settings/api-keys) to make requests.  # Making requests  Here are the key concepts required to make requests to the incident.io API.  ## Authentication  For all requests made to the incident.io API, you'll need an API key.  To create an API key, head to the incident dashboard and visit [API keys](https://app.incident.io/settings/api-keys). When you create the key, you'll be able to choose what actions it can take for your account: choose carefully, as those roles can only be set when you first create the key. We'll only show you the token once, so make sure you store it somewhere safe.  API keys are global to your incident.io account, and can be managed by anyone who has the right permissions. We display the user that created the API key, and the API key will remain valid if that user becomes deactivated.  Once you have the key, you should make requests to the API that set the `Authorization` request header using a \"Bearer\" authentication scheme:  ``` Authorization: Bearer <YOUR_API_KEY> ```  ## Rate Limits  The incident.io API enforces rate limits to ensure consistent performance for all users.  The default rate limit is 1200 requests/minute per API key. This limit applies to most endpoints across the API.  Some endpoints have lower rate limits, particularly those that interact with external third-party systems that impose their own limitations. These specific limits vary by endpoint, and we recommend relying on the rate-limit error responses to understand usage patterns and implement appropriate retry strategies.  When you exceed a rate limit, the API will respond with a `429 Too Many Requests` status code, along with a JSON response that includes information about the limit and when you can retry:  ```json {     \"type\": \"too_many_requests\",     \"status\": 429,     \"request_id\": \"b839a403-7704-41c1-bf6a-39a2d68caefa\",     \"rate_limit\": {         \"name\": \"api_key_name\",         \"limit\": 1200,         \"remaining\": 0,         \"retry_after\": \"Thu, 17 Apr 2025 11:17:18 UTC\"     },     \"errors\": [         {             \"code\": \"too_many_requests\",             \"message\": \"Too many requests hit the API too quickly. We recommend an exponential backoff of your requests.\"         }     ] } ```  The response includes: * The name of the API key (`name`) * The bucket limit (`limit`) * The number of requests remaining (`remaining`) * When you can retry requests (`retry_after`)  ## Errors  We use standard HTTP response codes to indicate the status or failure of API requests.  The API response body will be JSON, and contain more detailed information on the nature of the error.  An example error when a request is made without an API key:  ```json {   \"type\": \"authentication_error\",   \"status\": 401,   \"request_id\": \"8e3cc412-b49d-4957-9073-2c19d2c61804\",   \"errors\": [     {       \"code\": \"missing_authorization_material\",       \"message\": \"No authorization material provided in request\"     }   ] } ```  Note that the error:  - Contains the HTTP status (`401`) - References the type of error (`authentication_error`) - Includes a `request_id` that can be provided to incident.io support to help  debug questions with your API request - Provides a list of individual errors, which go into detail about why the error  occurred  The most common error will be a 422 Validation Error, which is returned when the request was rejected due to failing validations.  These errors look like this:  ```json {   \"type\": \"validation_error\",   \"status\": 422,   \"request_id\": \"631766c4-4afd-4803-997c-cd700928fa4b\",   \"errors\": [     {       \"code\": \"is_required\",       \"message\": \"A severity is required to open an incident\",       \"source\": {         \"field\": \"severity_id\"       }     }   ] } ```  This error is caused by not providing a severity identifier, which should be at the `severity_id` field of the request payload. Errors like these can be mapped to forms, should you be integrating with the API from a user-interface.  ## Compatibility  We won't make breaking changes to existing API services or endpoints, but will expect integrators to upgrade themselves to the latest API endpoints within 3 months of us deprecating the old service.  We will make changes that are considered backwards compatible, which include:  - Adding new API endpoints and services - Adding new properties to responses from existing API endpoints - Reordering properties returned from existing API endpoints - Adding optional request parameters to existing API endpoints - Altering the format or length of IDs - Adding new values to enums  It is important that clients are robust to these changes, to ensure reliable integrations.  As an example, if you are generating a client using an openapi-generator, ensure the generated client is configured to support unknown enum values, often configured via the `enumUnknownDefaultCase` parameter.  When breaking changes are unavoidable, we'll create a new service version on a separate path, and run them in parallel.  For example:  - https://api.incident.io/v1/incidents - https://api.incident.io/v2/incidents  For any questions, email support@incident.io. 

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module IncidentIoSdk
  class AlertEventsV2Api
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # CreateHTTP Alert Events V2
    # Create an alert event using an HTTP source.
    # @param alert_source_config_id [String] Which alert source config produced this alert
    # @param alert_events_create_http_payload_v2 [AlertEventsCreateHTTPPayloadV2] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :token Token used to authenticate the request, generated when configuring the alert source. Will be consumed via a URL query string parameter
    # @return [AlertEventsCreateHTTPResultV2]
    def alert_events_v2_create_http(alert_source_config_id, alert_events_create_http_payload_v2, opts = {})
      data, _status_code, _headers = alert_events_v2_create_http_with_http_info(alert_source_config_id, alert_events_create_http_payload_v2, opts)
      data
    end

    # CreateHTTP Alert Events V2
    # Create an alert event using an HTTP source.
    # @param alert_source_config_id [String] Which alert source config produced this alert
    # @param alert_events_create_http_payload_v2 [AlertEventsCreateHTTPPayloadV2] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :token Token used to authenticate the request, generated when configuring the alert source. Will be consumed via a URL query string parameter
    # @return [Array<(AlertEventsCreateHTTPResultV2, Integer, Hash)>] AlertEventsCreateHTTPResultV2 data, response status code and response headers
    def alert_events_v2_create_http_with_http_info(alert_source_config_id, alert_events_create_http_payload_v2, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AlertEventsV2Api.alert_events_v2_create_http ...'
      end
      # verify the required parameter 'alert_source_config_id' is set
      if @api_client.config.client_side_validation && alert_source_config_id.nil?
        fail ArgumentError, "Missing the required parameter 'alert_source_config_id' when calling AlertEventsV2Api.alert_events_v2_create_http"
      end
      # verify the required parameter 'alert_events_create_http_payload_v2' is set
      if @api_client.config.client_side_validation && alert_events_create_http_payload_v2.nil?
        fail ArgumentError, "Missing the required parameter 'alert_events_create_http_payload_v2' when calling AlertEventsV2Api.alert_events_v2_create_http"
      end
      # resource path
      local_var_path = '/v2/alert_events/http/{alert_source_config_id}'.sub('{' + 'alert_source_config_id' + '}', CGI.escape(alert_source_config_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(alert_events_create_http_payload_v2)

      # return_type
      return_type = opts[:debug_return_type] || 'AlertEventsCreateHTTPResultV2'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AlertEventsV2Api.alert_events_v2_create_http",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AlertEventsV2Api#alert_events_v2_create_http\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
