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
  class CatalogTypeV2
    # Annotations that can track metadata about this type
    attr_accessor :annotations

    # What categories is this type considered part of
    attr_accessor :categories

    # Sets the display color of this type in the dashboard
    attr_accessor :color

    # When this type was created
    attr_accessor :created_at

    # Human readble description of this type
    attr_accessor :description

    # If this is a dynamic catalog type, this will be the unique parameter for identitfying this resource externally.
    attr_accessor :dynamic_resource_parameter

    # If populated, gives an estimated count of entries for this type
    attr_accessor :estimated_count

    # Sets the display icon of this type in the dashboard
    attr_accessor :icon

    # ID of this catalog type
    attr_accessor :id

    # Catalog types that are synced with external resources can't be edited
    attr_accessor :is_editable

    # When this type was last synced (if it's ever been sync'd)
    attr_accessor :last_synced_at

    # Name is the human readable name of this type
    attr_accessor :name

    # If this type should be ranked
    attr_accessor :ranked

    # The registry resource this type is synced from, if any
    attr_accessor :registry_type

    # If populated, the integrations required for this type
    attr_accessor :required_integrations

    attr_accessor :schema

    # This type has been deprecated, and will always be empty.
    attr_accessor :semantic_type

    # The url of the external repository where this type is managed
    attr_accessor :source_repo_url

    # The type name of this catalog type, to be used when defining attributes. This is immutable once a CatalogType has been created. For non-externally sync types, it must follow the pattern Custom[\"SomeName\"]
    attr_accessor :type_name

    # When this type was last updated
    attr_accessor :updated_at

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
        :'annotations' => :'annotations',
        :'categories' => :'categories',
        :'color' => :'color',
        :'created_at' => :'created_at',
        :'description' => :'description',
        :'dynamic_resource_parameter' => :'dynamic_resource_parameter',
        :'estimated_count' => :'estimated_count',
        :'icon' => :'icon',
        :'id' => :'id',
        :'is_editable' => :'is_editable',
        :'last_synced_at' => :'last_synced_at',
        :'name' => :'name',
        :'ranked' => :'ranked',
        :'registry_type' => :'registry_type',
        :'required_integrations' => :'required_integrations',
        :'schema' => :'schema',
        :'semantic_type' => :'semantic_type',
        :'source_repo_url' => :'source_repo_url',
        :'type_name' => :'type_name',
        :'updated_at' => :'updated_at'
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
        :'annotations' => :'Hash<String, String>',
        :'categories' => :'Array<String>',
        :'color' => :'String',
        :'created_at' => :'Time',
        :'description' => :'String',
        :'dynamic_resource_parameter' => :'String',
        :'estimated_count' => :'Integer',
        :'icon' => :'String',
        :'id' => :'String',
        :'is_editable' => :'Boolean',
        :'last_synced_at' => :'Time',
        :'name' => :'String',
        :'ranked' => :'Boolean',
        :'registry_type' => :'String',
        :'required_integrations' => :'Array<String>',
        :'schema' => :'CatalogTypeSchemaV2',
        :'semantic_type' => :'String',
        :'source_repo_url' => :'String',
        :'type_name' => :'String',
        :'updated_at' => :'Time'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IncidentIoSdk::CatalogTypeV2` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IncidentIoSdk::CatalogTypeV2`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'annotations')
        if (value = attributes[:'annotations']).is_a?(Hash)
          self.annotations = value
        end
      else
        self.annotations = nil
      end

      if attributes.key?(:'categories')
        if (value = attributes[:'categories']).is_a?(Array)
          self.categories = value
        end
      else
        self.categories = nil
      end

      if attributes.key?(:'color')
        self.color = attributes[:'color']
      else
        self.color = nil
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      else
        self.created_at = nil
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      else
        self.description = nil
      end

      if attributes.key?(:'dynamic_resource_parameter')
        self.dynamic_resource_parameter = attributes[:'dynamic_resource_parameter']
      end

      if attributes.key?(:'estimated_count')
        self.estimated_count = attributes[:'estimated_count']
      end

      if attributes.key?(:'icon')
        self.icon = attributes[:'icon']
      else
        self.icon = nil
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'is_editable')
        self.is_editable = attributes[:'is_editable']
      else
        self.is_editable = nil
      end

      if attributes.key?(:'last_synced_at')
        self.last_synced_at = attributes[:'last_synced_at']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'ranked')
        self.ranked = attributes[:'ranked']
      else
        self.ranked = nil
      end

      if attributes.key?(:'registry_type')
        self.registry_type = attributes[:'registry_type']
      end

      if attributes.key?(:'required_integrations')
        if (value = attributes[:'required_integrations']).is_a?(Array)
          self.required_integrations = value
        end
      end

      if attributes.key?(:'schema')
        self.schema = attributes[:'schema']
      else
        self.schema = nil
      end

      if attributes.key?(:'semantic_type')
        self.semantic_type = attributes[:'semantic_type']
      else
        self.semantic_type = nil
      end

      if attributes.key?(:'source_repo_url')
        self.source_repo_url = attributes[:'source_repo_url']
      end

      if attributes.key?(:'type_name')
        self.type_name = attributes[:'type_name']
      else
        self.type_name = nil
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      else
        self.updated_at = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @annotations.nil?
        invalid_properties.push('invalid value for "annotations", annotations cannot be nil.')
      end

      if @categories.nil?
        invalid_properties.push('invalid value for "categories", categories cannot be nil.')
      end

      if @color.nil?
        invalid_properties.push('invalid value for "color", color cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @icon.nil?
        invalid_properties.push('invalid value for "icon", icon cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @is_editable.nil?
        invalid_properties.push('invalid value for "is_editable", is_editable cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @ranked.nil?
        invalid_properties.push('invalid value for "ranked", ranked cannot be nil.')
      end

      if @schema.nil?
        invalid_properties.push('invalid value for "schema", schema cannot be nil.')
      end

      if @semantic_type.nil?
        invalid_properties.push('invalid value for "semantic_type", semantic_type cannot be nil.')
      end

      if @type_name.nil?
        invalid_properties.push('invalid value for "type_name", type_name cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @annotations.nil?
      return false if @categories.nil?
      return false if @color.nil?
      color_validator = EnumAttributeValidator.new('String', ["yellow", "green", "blue", "violet", "pink", "cyan", "orange"])
      return false unless color_validator.valid?(@color)
      return false if @created_at.nil?
      return false if @description.nil?
      return false if @icon.nil?
      icon_validator = EnumAttributeValidator.new('String', ["alert", "bolt", "box", "briefcase", "browser", "bulb", "calendar", "clock", "cog", "components", "database", "doc", "email", "escalation-path", "files", "flag", "folder", "globe", "money", "server", "severity", "status-page", "store", "star", "tag", "user", "users"])
      return false unless icon_validator.valid?(@icon)
      return false if @id.nil?
      return false if @is_editable.nil?
      return false if @name.nil?
      return false if @ranked.nil?
      return false if @schema.nil?
      return false if @semantic_type.nil?
      return false if @type_name.nil?
      return false if @updated_at.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] annotations Value to be assigned
    def annotations=(annotations)
      if annotations.nil?
        fail ArgumentError, 'annotations cannot be nil'
      end

      @annotations = annotations
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] color Object to be assigned
    def color=(color)
      validator = EnumAttributeValidator.new('String', ["yellow", "green", "blue", "violet", "pink", "cyan", "orange"])
      unless validator.valid?(color)
        fail ArgumentError, "invalid value for \"color\", must be one of #{validator.allowable_values}."
      end
      @color = color
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
    # @param [Object] description Value to be assigned
    def description=(description)
      if description.nil?
        fail ArgumentError, 'description cannot be nil'
      end

      @description = description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] icon Object to be assigned
    def icon=(icon)
      validator = EnumAttributeValidator.new('String', ["alert", "bolt", "box", "briefcase", "browser", "bulb", "calendar", "clock", "cog", "components", "database", "doc", "email", "escalation-path", "files", "flag", "folder", "globe", "money", "server", "severity", "status-page", "store", "star", "tag", "user", "users"])
      unless validator.valid?(icon)
        fail ArgumentError, "invalid value for \"icon\", must be one of #{validator.allowable_values}."
      end
      @icon = icon
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
    # @param [Object] is_editable Value to be assigned
    def is_editable=(is_editable)
      if is_editable.nil?
        fail ArgumentError, 'is_editable cannot be nil'
      end

      @is_editable = is_editable
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
    # @param [Object] ranked Value to be assigned
    def ranked=(ranked)
      if ranked.nil?
        fail ArgumentError, 'ranked cannot be nil'
      end

      @ranked = ranked
    end

    # Custom attribute writer method with validation
    # @param [Object] schema Value to be assigned
    def schema=(schema)
      if schema.nil?
        fail ArgumentError, 'schema cannot be nil'
      end

      @schema = schema
    end

    # Custom attribute writer method with validation
    # @param [Object] semantic_type Value to be assigned
    def semantic_type=(semantic_type)
      if semantic_type.nil?
        fail ArgumentError, 'semantic_type cannot be nil'
      end

      @semantic_type = semantic_type
    end

    # Custom attribute writer method with validation
    # @param [Object] type_name Value to be assigned
    def type_name=(type_name)
      if type_name.nil?
        fail ArgumentError, 'type_name cannot be nil'
      end

      @type_name = type_name
    end

    # Custom attribute writer method with validation
    # @param [Object] updated_at Value to be assigned
    def updated_at=(updated_at)
      if updated_at.nil?
        fail ArgumentError, 'updated_at cannot be nil'
      end

      @updated_at = updated_at
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          annotations == o.annotations &&
          categories == o.categories &&
          color == o.color &&
          created_at == o.created_at &&
          description == o.description &&
          dynamic_resource_parameter == o.dynamic_resource_parameter &&
          estimated_count == o.estimated_count &&
          icon == o.icon &&
          id == o.id &&
          is_editable == o.is_editable &&
          last_synced_at == o.last_synced_at &&
          name == o.name &&
          ranked == o.ranked &&
          registry_type == o.registry_type &&
          required_integrations == o.required_integrations &&
          schema == o.schema &&
          semantic_type == o.semantic_type &&
          source_repo_url == o.source_repo_url &&
          type_name == o.type_name &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [annotations, categories, color, created_at, description, dynamic_resource_parameter, estimated_count, icon, id, is_editable, last_synced_at, name, ranked, registry_type, required_integrations, schema, semantic_type, source_repo_url, type_name, updated_at].hash
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
