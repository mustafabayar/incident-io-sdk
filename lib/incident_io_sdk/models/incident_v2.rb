=begin
#incident.io

#This is the API reference for incident.io.  It documents available API endpoints, provides examples of how to use it, and instructions around things like authentication and error handling.  The API is hosted at:  - https://api.incident.io/  And you will need to create an API key via your [incident.io dashboard](https://app.incident.io/settings/api-keys) to make requests.  # Making requests  Here are the key concepts required to make requests to the incident.io API.  ## Authentication  For all requests made to the incident.io API, you'll need an API key.  To create an API key, head to the incident dashboard and visit [API keys](https://app.incident.io/settings/api-keys). When you create the key, you'll be able to choose what actions it can take for your account: choose carefully, as those roles can only be set when you first create the key. We'll only show you the token once, so make sure you store it somewhere safe.  API keys are global to your incident.io account, and can be managed by anyone who has the right permissions. We display the user that created the API key, and the API key will remain valid if that user becomes deactivated.  Once you have the key, you should make requests to the API that set the `Authorization` request header using a \"Bearer\" authentication scheme:  ``` Authorization: Bearer <YOUR_API_KEY> ```  ## Rate Limits  The incident.io API enforces rate limits to ensure consistent performance for all users.  The default rate limit is 1200 requests/minute per API key. This limit applies to most endpoints across the API.  Some endpoints have lower rate limits, particularly those that interact with external third-party systems that impose their own limitations. These specific limits vary by endpoint, and we recommend relying on the rate-limit error responses to understand usage patterns and implement appropriate retry strategies.  When you exceed a rate limit, the API will respond with a `429 Too Many Requests` status code, along with a JSON response that includes information about the limit and when you can retry:  ```json {     \"type\": \"too_many_requests\",     \"status\": 429,     \"request_id\": \"b839a403-7704-41c1-bf6a-39a2d68caefa\",     \"rate_limit\": {         \"name\": \"api_key_name\",         \"limit\": 1200,         \"remaining\": 0,         \"retry_after\": \"Thu, 17 Apr 2025 11:17:18 UTC\"     },     \"errors\": [         {             \"code\": \"too_many_requests\",             \"message\": \"Too many requests hit the API too quickly. We recommend an exponential backoff of your requests.\"         }     ] } ```  The response includes: * The name of the API key (`name`) * The bucket limit (`limit`) * The number of requests remaining (`remaining`) * When you can retry requests (`retry_after`)  ## Errors  We use standard HTTP response codes to indicate the status or failure of API requests.  The API response body will be JSON, and contain more detailed information on the nature of the error.  An example error when a request is made without an API key:  ```json {   \"type\": \"authentication_error\",   \"status\": 401,   \"request_id\": \"8e3cc412-b49d-4957-9073-2c19d2c61804\",   \"errors\": [     {       \"code\": \"missing_authorization_material\",       \"message\": \"No authorization material provided in request\"     }   ] } ```  Note that the error:  - Contains the HTTP status (`401`) - References the type of error (`authentication_error`) - Includes a `request_id` that can be provided to incident.io support to help  debug questions with your API request - Provides a list of individual errors, which go into detail about why the error  occurred  The most common error will be a 422 Validation Error, which is returned when the request was rejected due to failing validations.  These errors look like this:  ```json {   \"type\": \"validation_error\",   \"status\": 422,   \"request_id\": \"631766c4-4afd-4803-997c-cd700928fa4b\",   \"errors\": [     {       \"code\": \"is_required\",       \"message\": \"A severity is required to open an incident\",       \"source\": {         \"field\": \"severity_id\"       }     }   ] } ```  This error is caused by not providing a severity identifier, which should be at the `severity_id` field of the request payload. Errors like these can be mapped to forms, should you be integrating with the API from a user-interface.  ## Compatibility  We won't make breaking changes to existing API services or endpoints, but will expect integrators to upgrade themselves to the latest API endpoints within 3 months of us deprecating the old service.  We will make changes that are considered backwards compatible, which include:  - Adding new API endpoints and services - Adding new properties to responses from existing API endpoints - Reordering properties returned from existing API endpoints - Adding optional request parameters to existing API endpoints - Altering the format or length of IDs - Adding new values to enums  It is important that clients are robust to these changes, to ensure reliable integrations.  As an example, if you are generating a client using an openapi-generator, ensure the generated client is configured to support unknown enum values, often configured via the `enumUnknownDefaultCase` parameter.  When breaking changes are unavoidable, we'll create a new service version on a separate path, and run them in parallel.  For example:  - https://api.incident.io/v1/incidents - https://api.incident.io/v2/incidents  For any questions, email support@incident.io. 

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'date'
require 'time'

module IncidentIoSdk
  class IncidentV2
    # The call URL attached to this incident
    attr_accessor :call_url

    # When the incident was created
    attr_accessor :created_at

    attr_accessor :creator

    # Custom field entries for this incident
    attr_accessor :custom_field_entries

    # Incident duration metrics and their measurements for this incident
    attr_accessor :duration_metrics

    attr_accessor :external_issue_reference

    # If this incident has a debrief attached
    attr_accessor :has_debrief

    # Unique identifier for the incident
    attr_accessor :id

    # A list of who is assigned to each role for this incident
    attr_accessor :incident_role_assignments

    attr_accessor :incident_status

    # Incident lifecycle events and when they occurred
    attr_accessor :incident_timestamp_values

    attr_accessor :incident_type

    # Whether the incident is real, a test, a tutorial, or importing as a retrospective incident
    attr_accessor :mode

    # Explanation of the incident
    attr_accessor :name

    # A permanent link to the homepage for this incident
    attr_accessor :permalink

    # Description of the incident
    attr_accessor :postmortem_document_url

    # Reference to this incident, as displayed across the product
    attr_accessor :reference

    attr_accessor :severity

    # ID of the Slack channel in the organisation Slack workspace. Note that the channel is sometimes created asynchronously, so may not be present when the incident is just created.
    attr_accessor :slack_channel_id

    # Name of the slack channel
    attr_accessor :slack_channel_name

    # ID of the Slack team / workspace. This is only required if you are using a Slack Enterprise Grid with multiple teams.
    attr_accessor :slack_team_id

    # Detailed description of the incident
    attr_accessor :summary

    # When the incident was last updated
    attr_accessor :updated_at

    # Whether the incident should be open to anyone in your Slack workspace (public), or invite-only (private). For more information on Private Incidents see our [help centre](https://help.incident.io/articles/5905558102-can-we-mark-incidents-as-sensitive-and-restrict-access).
    attr_accessor :visibility

    # Amount of time spent on the incident in late hours
    attr_accessor :workload_minutes_late

    # Amount of time spent on the incident in sleeping hours
    attr_accessor :workload_minutes_sleeping

    # Amount of time spent on the incident in total
    attr_accessor :workload_minutes_total

    # Amount of time spent on the incident in working hours
    attr_accessor :workload_minutes_working

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'call_url' => :'call_url',
        :'created_at' => :'created_at',
        :'creator' => :'creator',
        :'custom_field_entries' => :'custom_field_entries',
        :'duration_metrics' => :'duration_metrics',
        :'external_issue_reference' => :'external_issue_reference',
        :'has_debrief' => :'has_debrief',
        :'id' => :'id',
        :'incident_role_assignments' => :'incident_role_assignments',
        :'incident_status' => :'incident_status',
        :'incident_timestamp_values' => :'incident_timestamp_values',
        :'incident_type' => :'incident_type',
        :'mode' => :'mode',
        :'name' => :'name',
        :'permalink' => :'permalink',
        :'postmortem_document_url' => :'postmortem_document_url',
        :'reference' => :'reference',
        :'severity' => :'severity',
        :'slack_channel_id' => :'slack_channel_id',
        :'slack_channel_name' => :'slack_channel_name',
        :'slack_team_id' => :'slack_team_id',
        :'summary' => :'summary',
        :'updated_at' => :'updated_at',
        :'visibility' => :'visibility',
        :'workload_minutes_late' => :'workload_minutes_late',
        :'workload_minutes_sleeping' => :'workload_minutes_sleeping',
        :'workload_minutes_total' => :'workload_minutes_total',
        :'workload_minutes_working' => :'workload_minutes_working'
      }
    end

    # Returns attribute mapping this model knows about
    def self.acceptable_attribute_map
      attribute_map
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      acceptable_attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'call_url' => :'String',
        :'created_at' => :'Time',
        :'creator' => :'ActorV2',
        :'custom_field_entries' => :'Array<CustomFieldEntryV2>',
        :'duration_metrics' => :'Array<IncidentDurationMetricWithValueV2>',
        :'external_issue_reference' => :'ExternalIssueReferenceV2',
        :'has_debrief' => :'Boolean',
        :'id' => :'String',
        :'incident_role_assignments' => :'Array<IncidentRoleAssignmentV2>',
        :'incident_status' => :'IncidentStatusV2',
        :'incident_timestamp_values' => :'Array<IncidentTimestampWithValueV2>',
        :'incident_type' => :'IncidentTypeV2',
        :'mode' => :'String',
        :'name' => :'String',
        :'permalink' => :'String',
        :'postmortem_document_url' => :'String',
        :'reference' => :'String',
        :'severity' => :'SeverityV2',
        :'slack_channel_id' => :'String',
        :'slack_channel_name' => :'String',
        :'slack_team_id' => :'String',
        :'summary' => :'String',
        :'updated_at' => :'Time',
        :'visibility' => :'String',
        :'workload_minutes_late' => :'Float',
        :'workload_minutes_sleeping' => :'Float',
        :'workload_minutes_total' => :'Float',
        :'workload_minutes_working' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `IncidentIoSdk::IncidentV2` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IncidentIoSdk::IncidentV2`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'call_url')
        self.call_url = attributes[:'call_url']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      else
        self.created_at = nil
      end

      if attributes.key?(:'creator')
        self.creator = attributes[:'creator']
      else
        self.creator = nil
      end

      if attributes.key?(:'custom_field_entries')
        if (value = attributes[:'custom_field_entries']).is_a?(Array)
          self.custom_field_entries = value
        end
      else
        self.custom_field_entries = nil
      end

      if attributes.key?(:'duration_metrics')
        if (value = attributes[:'duration_metrics']).is_a?(Array)
          self.duration_metrics = value
        end
      end

      if attributes.key?(:'external_issue_reference')
        self.external_issue_reference = attributes[:'external_issue_reference']
      end

      if attributes.key?(:'has_debrief')
        self.has_debrief = attributes[:'has_debrief']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'incident_role_assignments')
        if (value = attributes[:'incident_role_assignments']).is_a?(Array)
          self.incident_role_assignments = value
        end
      else
        self.incident_role_assignments = nil
      end

      if attributes.key?(:'incident_status')
        self.incident_status = attributes[:'incident_status']
      else
        self.incident_status = nil
      end

      if attributes.key?(:'incident_timestamp_values')
        if (value = attributes[:'incident_timestamp_values']).is_a?(Array)
          self.incident_timestamp_values = value
        end
      end

      if attributes.key?(:'incident_type')
        self.incident_type = attributes[:'incident_type']
      end

      if attributes.key?(:'mode')
        self.mode = attributes[:'mode']
      else
        self.mode = nil
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'permalink')
        self.permalink = attributes[:'permalink']
      end

      if attributes.key?(:'postmortem_document_url')
        self.postmortem_document_url = attributes[:'postmortem_document_url']
      end

      if attributes.key?(:'reference')
        self.reference = attributes[:'reference']
      else
        self.reference = nil
      end

      if attributes.key?(:'severity')
        self.severity = attributes[:'severity']
      end

      if attributes.key?(:'slack_channel_id')
        self.slack_channel_id = attributes[:'slack_channel_id']
      else
        self.slack_channel_id = nil
      end

      if attributes.key?(:'slack_channel_name')
        self.slack_channel_name = attributes[:'slack_channel_name']
      end

      if attributes.key?(:'slack_team_id')
        self.slack_team_id = attributes[:'slack_team_id']
      else
        self.slack_team_id = nil
      end

      if attributes.key?(:'summary')
        self.summary = attributes[:'summary']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      else
        self.updated_at = nil
      end

      if attributes.key?(:'visibility')
        self.visibility = attributes[:'visibility']
      else
        self.visibility = nil
      end

      if attributes.key?(:'workload_minutes_late')
        self.workload_minutes_late = attributes[:'workload_minutes_late']
      end

      if attributes.key?(:'workload_minutes_sleeping')
        self.workload_minutes_sleeping = attributes[:'workload_minutes_sleeping']
      end

      if attributes.key?(:'workload_minutes_total')
        self.workload_minutes_total = attributes[:'workload_minutes_total']
      end

      if attributes.key?(:'workload_minutes_working')
        self.workload_minutes_working = attributes[:'workload_minutes_working']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @creator.nil?
        invalid_properties.push('invalid value for "creator", creator cannot be nil.')
      end

      if @custom_field_entries.nil?
        invalid_properties.push('invalid value for "custom_field_entries", custom_field_entries cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @incident_role_assignments.nil?
        invalid_properties.push('invalid value for "incident_role_assignments", incident_role_assignments cannot be nil.')
      end

      if @incident_status.nil?
        invalid_properties.push('invalid value for "incident_status", incident_status cannot be nil.')
      end

      if @mode.nil?
        invalid_properties.push('invalid value for "mode", mode cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @reference.nil?
        invalid_properties.push('invalid value for "reference", reference cannot be nil.')
      end

      if @slack_channel_id.nil?
        invalid_properties.push('invalid value for "slack_channel_id", slack_channel_id cannot be nil.')
      end

      if @slack_team_id.nil?
        invalid_properties.push('invalid value for "slack_team_id", slack_team_id cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      if @visibility.nil?
        invalid_properties.push('invalid value for "visibility", visibility cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @created_at.nil?
      return false if @creator.nil?
      return false if @custom_field_entries.nil?
      return false if @id.nil?
      return false if @incident_role_assignments.nil?
      return false if @incident_status.nil?
      return false if @mode.nil?
      mode_validator = EnumAttributeValidator.new('String', ["standard", "retrospective", "test", "tutorial"])
      return false unless mode_validator.valid?(@mode)
      return false if @name.nil?
      return false if @reference.nil?
      return false if @slack_channel_id.nil?
      return false if @slack_team_id.nil?
      return false if @updated_at.nil?
      return false if @visibility.nil?
      visibility_validator = EnumAttributeValidator.new('String', ["public", "private"])
      return false unless visibility_validator.valid?(@visibility)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] created_at Value to be assigned
    def created_at=(created_at)
      if created_at.nil?
        fail ArgumentError, 'created_at cannot be nil'
      end

      @created_at = created_at
    end

    # Custom attribute writer method with validation
    # @param [Object] creator Value to be assigned
    def creator=(creator)
      if creator.nil?
        fail ArgumentError, 'creator cannot be nil'
      end

      @creator = creator
    end

    # Custom attribute writer method with validation
    # @param [Object] custom_field_entries Value to be assigned
    def custom_field_entries=(custom_field_entries)
      if custom_field_entries.nil?
        fail ArgumentError, 'custom_field_entries cannot be nil'
      end

      @custom_field_entries = custom_field_entries
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] incident_role_assignments Value to be assigned
    def incident_role_assignments=(incident_role_assignments)
      if incident_role_assignments.nil?
        fail ArgumentError, 'incident_role_assignments cannot be nil'
      end

      @incident_role_assignments = incident_role_assignments
    end

    # Custom attribute writer method with validation
    # @param [Object] incident_status Value to be assigned
    def incident_status=(incident_status)
      if incident_status.nil?
        fail ArgumentError, 'incident_status cannot be nil'
      end

      @incident_status = incident_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mode Object to be assigned
    def mode=(mode)
      validator = EnumAttributeValidator.new('String', ["standard", "retrospective", "test", "tutorial"])
      unless validator.valid?(mode)
        fail ArgumentError, "invalid value for \"mode\", must be one of #{validator.allowable_values}."
      end
      @mode = mode
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] reference Value to be assigned
    def reference=(reference)
      if reference.nil?
        fail ArgumentError, 'reference cannot be nil'
      end

      @reference = reference
    end

    # Custom attribute writer method with validation
    # @param [Object] slack_channel_id Value to be assigned
    def slack_channel_id=(slack_channel_id)
      if slack_channel_id.nil?
        fail ArgumentError, 'slack_channel_id cannot be nil'
      end

      @slack_channel_id = slack_channel_id
    end

    # Custom attribute writer method with validation
    # @param [Object] slack_team_id Value to be assigned
    def slack_team_id=(slack_team_id)
      if slack_team_id.nil?
        fail ArgumentError, 'slack_team_id cannot be nil'
      end

      @slack_team_id = slack_team_id
    end

    # Custom attribute writer method with validation
    # @param [Object] updated_at Value to be assigned
    def updated_at=(updated_at)
      if updated_at.nil?
        fail ArgumentError, 'updated_at cannot be nil'
      end

      @updated_at = updated_at
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] visibility Object to be assigned
    def visibility=(visibility)
      validator = EnumAttributeValidator.new('String', ["public", "private"])
      unless validator.valid?(visibility)
        fail ArgumentError, "invalid value for \"visibility\", must be one of #{validator.allowable_values}."
      end
      @visibility = visibility
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          call_url == o.call_url &&
          created_at == o.created_at &&
          creator == o.creator &&
          custom_field_entries == o.custom_field_entries &&
          duration_metrics == o.duration_metrics &&
          external_issue_reference == o.external_issue_reference &&
          has_debrief == o.has_debrief &&
          id == o.id &&
          incident_role_assignments == o.incident_role_assignments &&
          incident_status == o.incident_status &&
          incident_timestamp_values == o.incident_timestamp_values &&
          incident_type == o.incident_type &&
          mode == o.mode &&
          name == o.name &&
          permalink == o.permalink &&
          postmortem_document_url == o.postmortem_document_url &&
          reference == o.reference &&
          severity == o.severity &&
          slack_channel_id == o.slack_channel_id &&
          slack_channel_name == o.slack_channel_name &&
          slack_team_id == o.slack_team_id &&
          summary == o.summary &&
          updated_at == o.updated_at &&
          visibility == o.visibility &&
          workload_minutes_late == o.workload_minutes_late &&
          workload_minutes_sleeping == o.workload_minutes_sleeping &&
          workload_minutes_total == o.workload_minutes_total &&
          workload_minutes_working == o.workload_minutes_working
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [call_url, created_at, creator, custom_field_entries, duration_metrics, external_issue_reference, has_debrief, id, incident_role_assignments, incident_status, incident_timestamp_values, incident_type, mode, name, permalink, postmortem_document_url, reference, severity, slack_channel_id, slack_channel_name, slack_team_id, summary, updated_at, visibility, workload_minutes_late, workload_minutes_sleeping, workload_minutes_total, workload_minutes_working].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = IncidentIoSdk.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
