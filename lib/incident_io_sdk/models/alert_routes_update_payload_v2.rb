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
  class AlertRoutesUpdatePayloadV2
    # Which alert sources should this alert route match?
    attr_accessor :alert_sources

    # The channel configuration for this alert route
    attr_accessor :channel_config

    # What condition groups must be true for this alert route to fire?
    attr_accessor :condition_groups

    # The time of creation of this alert route
    attr_accessor :created_at

    # Whether this alert route is enabled or not
    attr_accessor :enabled

    attr_accessor :escalation_config

    # The expressions used in this template
    attr_accessor :expressions

    attr_accessor :incident_config

    attr_accessor :incident_template

    # Whether this alert route is private. Private alert routes will only create private incidents from alerts.
    attr_accessor :is_private

    # The name of this alert route config, for the user's reference
    attr_accessor :name

    # The time of last update of this alert route
    attr_accessor :updated_at

    # The version of this alert route config
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'alert_sources' => :'alert_sources',
        :'channel_config' => :'channel_config',
        :'condition_groups' => :'condition_groups',
        :'created_at' => :'created_at',
        :'enabled' => :'enabled',
        :'escalation_config' => :'escalation_config',
        :'expressions' => :'expressions',
        :'incident_config' => :'incident_config',
        :'incident_template' => :'incident_template',
        :'is_private' => :'is_private',
        :'name' => :'name',
        :'updated_at' => :'updated_at',
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
        :'alert_sources' => :'Array<AlertRouteAlertSourcePayloadV2>',
        :'channel_config' => :'Array<AlertRouteChannelConfigPayloadV2>',
        :'condition_groups' => :'Array<ConditionGroupPayloadV2>',
        :'created_at' => :'Time',
        :'enabled' => :'Boolean',
        :'escalation_config' => :'AlertRouteEscalationConfigPayloadV2',
        :'expressions' => :'Array<ExpressionPayloadV2>',
        :'incident_config' => :'AlertRouteIncidentConfigPayloadV2',
        :'incident_template' => :'AlertRouteIncidentTemplatePayloadV2',
        :'is_private' => :'Boolean',
        :'name' => :'String',
        :'updated_at' => :'Time',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IncidentIoSdk::AlertRoutesUpdatePayloadV2` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IncidentIoSdk::AlertRoutesUpdatePayloadV2`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'alert_sources')
        if (value = attributes[:'alert_sources']).is_a?(Array)
          self.alert_sources = value
        end
      else
        self.alert_sources = nil
      end

      if attributes.key?(:'channel_config')
        if (value = attributes[:'channel_config']).is_a?(Array)
          self.channel_config = value
        end
      else
        self.channel_config = nil
      end

      if attributes.key?(:'condition_groups')
        if (value = attributes[:'condition_groups']).is_a?(Array)
          self.condition_groups = value
        end
      else
        self.condition_groups = nil
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      else
        self.enabled = nil
      end

      if attributes.key?(:'escalation_config')
        self.escalation_config = attributes[:'escalation_config']
      else
        self.escalation_config = nil
      end

      if attributes.key?(:'expressions')
        if (value = attributes[:'expressions']).is_a?(Array)
          self.expressions = value
        end
      else
        self.expressions = nil
      end

      if attributes.key?(:'incident_config')
        self.incident_config = attributes[:'incident_config']
      else
        self.incident_config = nil
      end

      if attributes.key?(:'incident_template')
        self.incident_template = attributes[:'incident_template']
      else
        self.incident_template = nil
      end

      if attributes.key?(:'is_private')
        self.is_private = attributes[:'is_private']
      else
        self.is_private = nil
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
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
      if @alert_sources.nil?
        invalid_properties.push('invalid value for "alert_sources", alert_sources cannot be nil.')
      end

      if @channel_config.nil?
        invalid_properties.push('invalid value for "channel_config", channel_config cannot be nil.')
      end

      if @condition_groups.nil?
        invalid_properties.push('invalid value for "condition_groups", condition_groups cannot be nil.')
      end

      if @enabled.nil?
        invalid_properties.push('invalid value for "enabled", enabled cannot be nil.')
      end

      if @escalation_config.nil?
        invalid_properties.push('invalid value for "escalation_config", escalation_config cannot be nil.')
      end

      if @expressions.nil?
        invalid_properties.push('invalid value for "expressions", expressions cannot be nil.')
      end

      if @incident_config.nil?
        invalid_properties.push('invalid value for "incident_config", incident_config cannot be nil.')
      end

      if @incident_template.nil?
        invalid_properties.push('invalid value for "incident_template", incident_template cannot be nil.')
      end

      if @is_private.nil?
        invalid_properties.push('invalid value for "is_private", is_private cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
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
      return false if @alert_sources.nil?
      return false if @channel_config.nil?
      return false if @condition_groups.nil?
      return false if @enabled.nil?
      return false if @escalation_config.nil?
      return false if @expressions.nil?
      return false if @incident_config.nil?
      return false if @incident_template.nil?
      return false if @is_private.nil?
      return false if @name.nil?
      return false if @version.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] alert_sources Value to be assigned
    def alert_sources=(alert_sources)
      if alert_sources.nil?
        fail ArgumentError, 'alert_sources cannot be nil'
      end

      @alert_sources = alert_sources
    end

    # Custom attribute writer method with validation
    # @param [Object] channel_config Value to be assigned
    def channel_config=(channel_config)
      if channel_config.nil?
        fail ArgumentError, 'channel_config cannot be nil'
      end

      @channel_config = channel_config
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
    # @param [Object] enabled Value to be assigned
    def enabled=(enabled)
      if enabled.nil?
        fail ArgumentError, 'enabled cannot be nil'
      end

      @enabled = enabled
    end

    # Custom attribute writer method with validation
    # @param [Object] escalation_config Value to be assigned
    def escalation_config=(escalation_config)
      if escalation_config.nil?
        fail ArgumentError, 'escalation_config cannot be nil'
      end

      @escalation_config = escalation_config
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
    # @param [Object] incident_config Value to be assigned
    def incident_config=(incident_config)
      if incident_config.nil?
        fail ArgumentError, 'incident_config cannot be nil'
      end

      @incident_config = incident_config
    end

    # Custom attribute writer method with validation
    # @param [Object] incident_template Value to be assigned
    def incident_template=(incident_template)
      if incident_template.nil?
        fail ArgumentError, 'incident_template cannot be nil'
      end

      @incident_template = incident_template
    end

    # Custom attribute writer method with validation
    # @param [Object] is_private Value to be assigned
    def is_private=(is_private)
      if is_private.nil?
        fail ArgumentError, 'is_private cannot be nil'
      end

      @is_private = is_private
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
          alert_sources == o.alert_sources &&
          channel_config == o.channel_config &&
          condition_groups == o.condition_groups &&
          created_at == o.created_at &&
          enabled == o.enabled &&
          escalation_config == o.escalation_config &&
          expressions == o.expressions &&
          incident_config == o.incident_config &&
          incident_template == o.incident_template &&
          is_private == o.is_private &&
          name == o.name &&
          updated_at == o.updated_at &&
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
      [alert_sources, channel_config, condition_groups, created_at, enabled, escalation_config, expressions, incident_config, incident_template, is_private, name, updated_at, version].hash
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
