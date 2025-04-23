=begin
#incident.io

#This is the API reference for incident.io.  It documents available API endpoints, provides examples of how to use it, and instructions around things like authentication and error handling.  The API is hosted at:  - https://api.incident.io/  And you will need to create an API key via your [incident.io dashboard](https://app.incident.io/settings/api-keys) to make requests.  # Making requests  Here are the key concepts required to make requests to the incident.io API.  ## Authentication  For all requests made to the incident.io API, you'll need an API key.  To create an API key, head to the incident dashboard and visit [API keys](https://app.incident.io/settings/api-keys). When you create the key, you'll be able to choose what actions it can take for your account: choose carefully, as those roles can only be set when you first create the key. We'll only show you the token once, so make sure you store it somewhere safe.  API keys are global to your incident.io account, and can be managed by anyone who has the right permissions. We display the user that created the API key, and the API key will remain valid if that user becomes deactivated.  Once you have the key, you should make requests to the API that set the `Authorization` request header using a \"Bearer\" authentication scheme:  ``` Authorization: Bearer <YOUR_API_KEY> ```  ## Rate Limits  The incident.io API enforces rate limits to ensure consistent performance for all users.  The default rate limit is 1200 requests/minute per API key. This limit applies to most endpoints across the API.  Some endpoints have lower rate limits, particularly those that interact with external third-party systems that impose their own limitations. These specific limits vary by endpoint, and we recommend relying on the rate-limit error responses to understand usage patterns and implement appropriate retry strategies.  When you exceed a rate limit, the API will respond with a `429 Too Many Requests` status code, along with a JSON response that includes information about the limit and when you can retry:  ```json {     \"type\": \"too_many_requests\",     \"status\": 429,     \"request_id\": \"b839a403-7704-41c1-bf6a-39a2d68caefa\",     \"rate_limit\": {         \"name\": \"api_key_name\",         \"limit\": 1200,         \"remaining\": 0,         \"retry_after\": \"Thu, 17 Apr 2025 11:17:18 UTC\"     },     \"errors\": [         {             \"code\": \"too_many_requests\",             \"message\": \"Too many requests hit the API too quickly. We recommend an exponential backoff of your requests.\"         }     ] } ```  The response includes: * The name of the API key (`name`) * The bucket limit (`limit`) * The number of requests remaining (`remaining`) * When you can retry requests (`retry_after`)  ## Errors  We use standard HTTP response codes to indicate the status or failure of API requests.  The API response body will be JSON, and contain more detailed information on the nature of the error.  An example error when a request is made without an API key:  ```json {   \"type\": \"authentication_error\",   \"status\": 401,   \"request_id\": \"8e3cc412-b49d-4957-9073-2c19d2c61804\",   \"errors\": [     {       \"code\": \"missing_authorization_material\",       \"message\": \"No authorization material provided in request\"     }   ] } ```  Note that the error:  - Contains the HTTP status (`401`) - References the type of error (`authentication_error`) - Includes a `request_id` that can be provided to incident.io support to help  debug questions with your API request - Provides a list of individual errors, which go into detail about why the error  occurred  The most common error will be a 422 Validation Error, which is returned when the request was rejected due to failing validations.  These errors look like this:  ```json {   \"type\": \"validation_error\",   \"status\": 422,   \"request_id\": \"631766c4-4afd-4803-997c-cd700928fa4b\",   \"errors\": [     {       \"code\": \"is_required\",       \"message\": \"A severity is required to open an incident\",       \"source\": {         \"field\": \"severity_id\"       }     }   ] } ```  This error is caused by not providing a severity identifier, which should be at the `severity_id` field of the request payload. Errors like these can be mapped to forms, should you be integrating with the API from a user-interface.  ## Compatibility  We won't make breaking changes to existing API services or endpoints, but will expect integrators to upgrade themselves to the latest API endpoints within 3 months of us deprecating the old service.  We will make changes that are considered backwards compatible, which include:  - Adding new API endpoints and services - Adding new properties to responses from existing API endpoints - Reordering properties returned from existing API endpoints - Adding optional request parameters to existing API endpoints - Altering the format or length of IDs - Adding new values to enums  It is important that clients are robust to these changes, to ensure reliable integrations.  As an example, if you are generating a client using an openapi-generator, ensure the generated client is configured to support unknown enum values, often configured via the `enumUnknownDefaultCase` parameter.  When breaking changes are unavoidable, we'll create a new service version on a separate path, and run them in parallel.  For example:  - https://api.incident.io/v1/incidents - https://api.incident.io/v2/incidents  For any questions, email support@incident.io. 

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for IncidentIoSdk::CatalogV2Api
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CatalogV2Api' do
  before do
    # run before each test
    @api_instance = IncidentIoSdk::CatalogV2Api.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CatalogV2Api' do
    it 'should create an instance of CatalogV2Api' do
      expect(@api_instance).to be_instance_of(IncidentIoSdk::CatalogV2Api)
    end
  end

  # unit tests for catalog_v2_create_entry
  # CreateEntry Catalog V2
  # Create an entry within the catalog. We support a maximum of 50,000 entries per type.  If you call this API with a payload where the external_id and catalog_type_id match an existing entry, the existing entry will be updated.
  # @param catalog_create_entry_payload_v2 
  # @param [Hash] opts the optional parameters
  # @return [CatalogCreateEntryResultV2]
  describe 'catalog_v2_create_entry test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for catalog_v2_create_type
  # CreateType Catalog V2
  # Create a catalog type. The schema must be updated using the UpdateTypeSchema endpoint.
  # @param catalog_create_type_payload_v2 
  # @param [Hash] opts the optional parameters
  # @return [CatalogCreateTypeResultV2]
  describe 'catalog_v2_create_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for catalog_v2_destroy_entry
  # DestroyEntry Catalog V2
  # Archives a catalog entry.
  # @param id ID of this catalog entry
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'catalog_v2_destroy_entry test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for catalog_v2_destroy_type
  # DestroyType Catalog V2
  # Archives a catalog type and associated entries.
  # @param id ID of this catalog type
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'catalog_v2_destroy_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for catalog_v2_list_entries
  # ListEntries Catalog V2
  # List entries for a catalog type.
  # @param catalog_type_id ID of this catalog type
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page_size Integer number of records to return
  # @option opts [String] :after An record&#39;s ID. This endpoint will return a list of records after this ID in relation to the API response order.
  # @return [CatalogListEntriesResultV2]
  describe 'catalog_v2_list_entries test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for catalog_v2_list_resources
  # ListResources Catalog V2
  # List available engine resources for the catalog.  A resource represents a type of data that can be held within the catalog, so this endpoint can be used to see what attribute types can be used when updating the schema of a catalog type. 
  # @param [Hash] opts the optional parameters
  # @return [CatalogListResourcesResultV2]
  describe 'catalog_v2_list_resources test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for catalog_v2_list_types
  # ListTypes Catalog V2
  # List all catalog types for an organisation, including those synced from external resources.
  # @param [Hash] opts the optional parameters
  # @return [CatalogListTypesResultV2]
  describe 'catalog_v2_list_types test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for catalog_v2_show_entry
  # ShowEntry Catalog V2
  # Show a single catalog entry.
  # @param id ID of this catalog entry
  # @param [Hash] opts the optional parameters
  # @return [CatalogShowEntryResultV2]
  describe 'catalog_v2_show_entry test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for catalog_v2_show_type
  # ShowType Catalog V2
  # Show a single catalog type.
  # @param id ID of this catalog type
  # @param [Hash] opts the optional parameters
  # @return [CatalogShowTypeResultV2]
  describe 'catalog_v2_show_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for catalog_v2_update_entry
  # UpdateEntry Catalog V2
  # Updates an existing catalog entry.
  # @param id ID of this catalog entry
  # @param catalog_update_entry_payload_v2 
  # @param [Hash] opts the optional parameters
  # @return [CatalogUpdateEntryResultV2]
  describe 'catalog_v2_update_entry test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for catalog_v2_update_type
  # UpdateType Catalog V2
  # Updates an existing catalog type. The schema must be updated using the UpdateTypeSchema endpoint.
  # @param id ID of this catalog type
  # @param catalog_update_type_payload_v2 
  # @param [Hash] opts the optional parameters
  # @return [CatalogUpdateTypeResultV2]
  describe 'catalog_v2_update_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for catalog_v2_update_type_schema
  # UpdateTypeSchema Catalog V2
  # Update an existing catalog types schema, adding or removing attributes.  Updating the schema is handled separately from creating and updating types, so that you don&#39;t have to worry about dependencies between types. For example, if type A has an attribute that relies on type B, you would have to create type B first.  By allowing the creation of types without a schema, they can be created in any order, but it means that you need to make a separate call to this endpoint to update the schema.
  # @param id ID of this catalog type
  # @param catalog_update_type_schema_payload_v2 
  # @param [Hash] opts the optional parameters
  # @return [CatalogUpdateTypeSchemaResultV2]
  describe 'catalog_v2_update_type_schema test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
