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
  class WorkflowV2
    # Conditions that apply to the workflow trigger
    attr_accessor :condition_groups

    # Whether to continue executing the workflow if a step fails
    attr_accessor :continue_on_step_error

    attr_accessor :delay

    # Expressions that make variables available in the scope
    attr_accessor :expressions

    # Folder to display the workflow in
    attr_accessor :folder

    # Unique identifier for the workflow
    attr_accessor :id

    # Whether to include private incidents
    attr_accessor :include_private_incidents

    # Name provided by the user when creating the workflow
    attr_accessor :name

    # This workflow will run 'once for' a list of references
    attr_accessor :once_for

    # The time from which this workflow will run on incidents
    attr_accessor :runs_from

    # Which incident modes should this workflow run on? By default, workflows only run on standard incidents, but can also be configured to run on test and retrospective incidents.
    attr_accessor :runs_on_incident_modes

    # Which incidents should the workflow be applied to?
    attr_accessor :runs_on_incidents

    # The shortform used to trigger this workflow (only applicable for manual triggers)
    attr_accessor :shortform

    # What state this workflow is in
    attr_accessor :state

    # Steps that are executed as part of the workflow
    attr_accessor :steps

    attr_accessor :trigger

    # Revision of the workflow, uniquely identifying it's version
    attr_accessor :version

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
        :'condition_groups' => :'condition_groups',
        :'continue_on_step_error' => :'continue_on_step_error',
        :'delay' => :'delay',
        :'expressions' => :'expressions',
        :'folder' => :'folder',
        :'id' => :'id',
        :'include_private_incidents' => :'include_private_incidents',
        :'name' => :'name',
        :'once_for' => :'once_for',
        :'runs_from' => :'runs_from',
        :'runs_on_incident_modes' => :'runs_on_incident_modes',
        :'runs_on_incidents' => :'runs_on_incidents',
        :'shortform' => :'shortform',
        :'state' => :'state',
        :'steps' => :'steps',
        :'trigger' => :'trigger',
        :'version' => :'version'
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
        :'condition_groups' => :'Array<ConditionGroupV2>',
        :'continue_on_step_error' => :'Boolean',
        :'delay' => :'WorkflowDelayV2',
        :'expressions' => :'Array<ExpressionV2>',
        :'folder' => :'String',
        :'id' => :'String',
        :'include_private_incidents' => :'Boolean',
        :'name' => :'String',
        :'once_for' => :'Array<EngineReferenceV2>',
        :'runs_from' => :'Time',
        :'runs_on_incident_modes' => :'Array<String>',
        :'runs_on_incidents' => :'String',
        :'shortform' => :'String',
        :'state' => :'String',
        :'steps' => :'Array<StepConfigV2>',
        :'trigger' => :'TriggerSlimV2',
        :'version' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IncidentIoSdk::WorkflowV2` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IncidentIoSdk::WorkflowV2`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'condition_groups')
        if (value = attributes[:'condition_groups']).is_a?(Array)
          self.condition_groups = value
        end
      else
        self.condition_groups = nil
      end

      if attributes.key?(:'continue_on_step_error')
        self.continue_on_step_error = attributes[:'continue_on_step_error']
      else
        self.continue_on_step_error = nil
      end

      if attributes.key?(:'delay')
        self.delay = attributes[:'delay']
      end

      if attributes.key?(:'expressions')
        if (value = attributes[:'expressions']).is_a?(Array)
          self.expressions = value
        end
      else
        self.expressions = nil
      end

      if attributes.key?(:'folder')
        self.folder = attributes[:'folder']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'include_private_incidents')
        self.include_private_incidents = attributes[:'include_private_incidents']
      else
        self.include_private_incidents = nil
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'once_for')
        if (value = attributes[:'once_for']).is_a?(Array)
          self.once_for = value
        end
      else
        self.once_for = nil
      end

      if attributes.key?(:'runs_from')
        self.runs_from = attributes[:'runs_from']
      end

      if attributes.key?(:'runs_on_incident_modes')
        if (value = attributes[:'runs_on_incident_modes']).is_a?(Array)
          self.runs_on_incident_modes = value
        end
      else
        self.runs_on_incident_modes = nil
      end

      if attributes.key?(:'runs_on_incidents')
        self.runs_on_incidents = attributes[:'runs_on_incidents']
      else
        self.runs_on_incidents = nil
      end

      if attributes.key?(:'shortform')
        self.shortform = attributes[:'shortform']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      else
        self.state = nil
      end

      if attributes.key?(:'steps')
        if (value = attributes[:'steps']).is_a?(Array)
          self.steps = value
        end
      else
        self.steps = nil
      end

      if attributes.key?(:'trigger')
        self.trigger = attributes[:'trigger']
      else
        self.trigger = nil
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      else
        self.version = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @condition_groups.nil?
        invalid_properties.push('invalid value for "condition_groups", condition_groups cannot be nil.')
      end

      if @continue_on_step_error.nil?
        invalid_properties.push('invalid value for "continue_on_step_error", continue_on_step_error cannot be nil.')
      end

      if @expressions.nil?
        invalid_properties.push('invalid value for "expressions", expressions cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @include_private_incidents.nil?
        invalid_properties.push('invalid value for "include_private_incidents", include_private_incidents cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @once_for.nil?
        invalid_properties.push('invalid value for "once_for", once_for cannot be nil.')
      end

      if @runs_on_incident_modes.nil?
        invalid_properties.push('invalid value for "runs_on_incident_modes", runs_on_incident_modes cannot be nil.')
      end

      if @runs_on_incidents.nil?
        invalid_properties.push('invalid value for "runs_on_incidents", runs_on_incidents cannot be nil.')
      end

      if @state.nil?
        invalid_properties.push('invalid value for "state", state cannot be nil.')
      end

      if @steps.nil?
        invalid_properties.push('invalid value for "steps", steps cannot be nil.')
      end

      if @trigger.nil?
        invalid_properties.push('invalid value for "trigger", trigger cannot be nil.')
      end

      if @version.nil?
        invalid_properties.push('invalid value for "version", version cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @condition_groups.nil?
      return false if @continue_on_step_error.nil?
      return false if @expressions.nil?
      return false if @id.nil?
      return false if @include_private_incidents.nil?
      return false if @name.nil?
      return false if @once_for.nil?
      return false if @runs_on_incident_modes.nil?
      return false if @runs_on_incidents.nil?
      runs_on_incidents_validator = EnumAttributeValidator.new('String', ["newly_created", "newly_created_and_active"])
      return false unless runs_on_incidents_validator.valid?(@runs_on_incidents)
      return false if @state.nil?
      state_validator = EnumAttributeValidator.new('String', ["active", "disabled", "draft", "error"])
      return false unless state_validator.valid?(@state)
      return false if @steps.nil?
      return false if @trigger.nil?
      return false if @version.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] condition_groups Value to be assigned
    def condition_groups=(condition_groups)
      if condition_groups.nil?
        fail ArgumentError, 'condition_groups cannot be nil'
      end

      @condition_groups = condition_groups
    end

    # Custom attribute writer method with validation
    # @param [Object] continue_on_step_error Value to be assigned
    def continue_on_step_error=(continue_on_step_error)
      if continue_on_step_error.nil?
        fail ArgumentError, 'continue_on_step_error cannot be nil'
      end

      @continue_on_step_error = continue_on_step_error
    end

    # Custom attribute writer method with validation
    # @param [Object] expressions Value to be assigned
    def expressions=(expressions)
      if expressions.nil?
        fail ArgumentError, 'expressions cannot be nil'
      end

      @expressions = expressions
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
    # @param [Object] include_private_incidents Value to be assigned
    def include_private_incidents=(include_private_incidents)
      if include_private_incidents.nil?
        fail ArgumentError, 'include_private_incidents cannot be nil'
      end

      @include_private_incidents = include_private_incidents
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
    # @param [Object] once_for Value to be assigned
    def once_for=(once_for)
      if once_for.nil?
        fail ArgumentError, 'once_for cannot be nil'
      end

      @once_for = once_for
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] runs_on_incidents Object to be assigned
    def runs_on_incidents=(runs_on_incidents)
      validator = EnumAttributeValidator.new('String', ["newly_created", "newly_created_and_active"])
      unless validator.valid?(runs_on_incidents)
        fail ArgumentError, "invalid value for \"runs_on_incidents\", must be one of #{validator.allowable_values}."
      end
      @runs_on_incidents = runs_on_incidents
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('String', ["active", "disabled", "draft", "error"])
      unless validator.valid?(state)
        fail ArgumentError, "invalid value for \"state\", must be one of #{validator.allowable_values}."
      end
      @state = state
    end

    # Custom attribute writer method with validation
    # @param [Object] steps Value to be assigned
    def steps=(steps)
      if steps.nil?
        fail ArgumentError, 'steps cannot be nil'
      end

      @steps = steps
    end

    # Custom attribute writer method with validation
    # @param [Object] trigger Value to be assigned
    def trigger=(trigger)
      if trigger.nil?
        fail ArgumentError, 'trigger cannot be nil'
      end

      @trigger = trigger
    end

    # Custom attribute writer method with validation
    # @param [Object] version Value to be assigned
    def version=(version)
      if version.nil?
        fail ArgumentError, 'version cannot be nil'
      end

      @version = version
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          condition_groups == o.condition_groups &&
          continue_on_step_error == o.continue_on_step_error &&
          delay == o.delay &&
          expressions == o.expressions &&
          folder == o.folder &&
          id == o.id &&
          include_private_incidents == o.include_private_incidents &&
          name == o.name &&
          once_for == o.once_for &&
          runs_from == o.runs_from &&
          runs_on_incident_modes == o.runs_on_incident_modes &&
          runs_on_incidents == o.runs_on_incidents &&
          shortform == o.shortform &&
          state == o.state &&
          steps == o.steps &&
          trigger == o.trigger &&
          version == o.version
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [condition_groups, continue_on_step_error, delay, expressions, folder, id, include_private_incidents, name, once_for, runs_from, runs_on_incident_modes, runs_on_incidents, shortform, state, steps, trigger, version].hash
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
