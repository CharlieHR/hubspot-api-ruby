=begin
#Lists

#CRUD operations to manage lists and list memberships

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module Hubspot
  module Crm
    module Lists
      class PublicAdsSearchFilter
        attr_accessor :filter_type

        attr_accessor :entity_type

        attr_accessor :search_term_type

        attr_accessor :search_terms

        attr_accessor :ad_network

        attr_accessor :operator

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
            :'filter_type' => :'filterType',
            :'entity_type' => :'entityType',
            :'search_term_type' => :'searchTermType',
            :'search_terms' => :'searchTerms',
            :'ad_network' => :'adNetwork',
            :'operator' => :'operator'
          }
        end

        # Returns all the JSON keys this model knows about
        def self.acceptable_attributes
          attribute_map.values
        end

        # Attribute type mapping.
        def self.openapi_types
          {
            :'filter_type' => :'String',
            :'entity_type' => :'String',
            :'search_term_type' => :'String',
            :'search_terms' => :'Array<String>',
            :'ad_network' => :'String',
            :'operator' => :'String'
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
            fail ArgumentError, "The input argument (attributes) must be a hash in `Hubspot::Crm::Lists::PublicAdsSearchFilter` initialize method"
          end

          # check to see if the attribute exists and convert string to symbol for hash key
          attributes = attributes.each_with_object({}) { |(k, v), h|
            if (!self.class.attribute_map.key?(k.to_sym))
              fail ArgumentError, "`#{k}` is not a valid attribute in `Hubspot::Crm::Lists::PublicAdsSearchFilter`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
            end
            h[k.to_sym] = v
          }

          if attributes.key?(:'filter_type')
            self.filter_type = attributes[:'filter_type']
          else
            self.filter_type = 'ADS_SEARCH'
          end

          if attributes.key?(:'entity_type')
            self.entity_type = attributes[:'entity_type']
          end

          if attributes.key?(:'search_term_type')
            self.search_term_type = attributes[:'search_term_type']
          end

          if attributes.key?(:'search_terms')
            if (value = attributes[:'search_terms']).is_a?(Array)
              self.search_terms = value
            end
          end

          if attributes.key?(:'ad_network')
            self.ad_network = attributes[:'ad_network']
          end

          if attributes.key?(:'operator')
            self.operator = attributes[:'operator']
          end
        end

        # Show invalid properties with the reasons. Usually used together with valid?
        # @return Array for valid properties with the reasons
        def list_invalid_properties
          invalid_properties = Array.new
          if @filter_type.nil?
            invalid_properties.push('invalid value for "filter_type", filter_type cannot be nil.')
          end

          if @entity_type.nil?
            invalid_properties.push('invalid value for "entity_type", entity_type cannot be nil.')
          end

          if @search_term_type.nil?
            invalid_properties.push('invalid value for "search_term_type", search_term_type cannot be nil.')
          end

          if @search_terms.nil?
            invalid_properties.push('invalid value for "search_terms", search_terms cannot be nil.')
          end

          if @ad_network.nil?
            invalid_properties.push('invalid value for "ad_network", ad_network cannot be nil.')
          end

          if @operator.nil?
            invalid_properties.push('invalid value for "operator", operator cannot be nil.')
          end

          invalid_properties
        end

        # Check to see if the all the properties in the model are valid
        # @return true if the model is valid
        def valid?
          return false if @filter_type.nil?
          filter_type_validator = EnumAttributeValidator.new('String', ["ADS_SEARCH"])
          return false unless filter_type_validator.valid?(@filter_type)
          return false if @entity_type.nil?
          return false if @search_term_type.nil?
          return false if @search_terms.nil?
          return false if @ad_network.nil?
          return false if @operator.nil?
          true
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] filter_type Object to be assigned
        def filter_type=(filter_type)
          validator = EnumAttributeValidator.new('String', ["ADS_SEARCH"])
          unless validator.valid?(filter_type)
            fail ArgumentError, "invalid value for \"filter_type\", must be one of #{validator.allowable_values}."
          end
          @filter_type = filter_type
        end

        # Checks equality by comparing each attribute.
        # @param [Object] Object to be compared
        def ==(o)
          return true if self.equal?(o)
          self.class == o.class &&
              filter_type == o.filter_type &&
              entity_type == o.entity_type &&
              search_term_type == o.search_term_type &&
              search_terms == o.search_terms &&
              ad_network == o.ad_network &&
              operator == o.operator
        end

        # @see the `==` method
        # @param [Object] Object to be compared
        def eql?(o)
          self == o
        end

        # Calculates hash code according to all attributes.
        # @return [Integer] Hash code
        def hash
          [filter_type, entity_type, search_term_type, search_terms, ad_network, operator].hash
        end

        # Builds the object from hash
        # @param [Hash] attributes Model attributes in the form of hash
        # @return [Object] Returns the model itself
        def self.build_from_hash(attributes)
          new.build_from_hash(attributes)
        end

        # Builds the object from hash
        # @param [Hash] attributes Model attributes in the form of hash
        # @return [Object] Returns the model itself
        def build_from_hash(attributes)
          return nil unless attributes.is_a?(Hash)
          attributes = attributes.transform_keys(&:to_sym)
          self.class.openapi_types.each_pair do |key, type|
            if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
              self.send("#{key}=", nil)
            elsif type =~ /\AArray<(.*)>/i
              # check to ensure the input is an array given that the attribute
              # is documented as an array but the input is not
              if attributes[self.class.attribute_map[key]].is_a?(Array)
                self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
              end
            elsif !attributes[self.class.attribute_map[key]].nil?
              self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
            end
          end

          self
        end

        # Deserializes the data based on type
        # @param string type Data type
        # @param string value Value to be deserialized
        # @return [Object] Deserialized data
        def _deserialize(type, value)
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
            klass = Hubspot::Crm::Lists.const_get(type)
            klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
  end
end
