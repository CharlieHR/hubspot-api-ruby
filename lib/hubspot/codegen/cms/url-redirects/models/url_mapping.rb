=begin
#URL redirects

#URL redirect operations

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'date'

module Hubspot
  module Cms
    module UrlRedirects
      class UrlMapping
        # The unique ID of this URL redirect.
        attr_accessor :id

        attr_accessor :portal_id

        attr_accessor :created

        attr_accessor :updated

        attr_accessor :created_by_id

        attr_accessor :updated_by_id

        # The target incoming URL, path, or pattern to match for redirection.
        attr_accessor :route_prefix

        # The destination URL, where the target URL should be redirected if it matches the `routePrefix`.
        attr_accessor :destination

        # The type of redirect to create. Options include: 301 (permanent), 302 (temporary), or 305 (proxy). Find more details [here](https://knowledge.hubspot.com/cos-general/how-to-redirect-a-hubspot-page).
        attr_accessor :redirect_style

        attr_accessor :content_group_id

        # Whether the URL redirect mapping should apply only if a live page on the URL isn't found. If False, the URL redirect mapping will take precedence over any existing page.
        attr_accessor :is_only_after_not_found

        attr_accessor :is_regex

        # Whether the `routePrefix` should match on the entire URL, including the domain.
        attr_accessor :is_match_full_url

        # Whether the `routePrefix` should match on the entire URL path, including the query string.
        attr_accessor :is_match_query_string

        # Whether the `routePrefix` should match based on pattern.
        attr_accessor :is_pattern

        # Whether a trailing slash will be ignored.
        attr_accessor :is_trailing_slash_optional

        # Whether the `routePrefix` should match both HTTP and HTTPS protocols.
        attr_accessor :is_protocol_agnostic

        attr_accessor :name

        # Used to prioritize URL redirection. If a given URL matches more than one redirect, the one with the **lower** precedence will be used.
        attr_accessor :precedence

        attr_accessor :deleted_at

        attr_accessor :note

        attr_accessor :label

        attr_accessor :internally_created

        attr_accessor :cos_object_type

        attr_accessor :cdn_purge_embargo_time

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
            :'id' => :'id',
            :'portal_id' => :'portalId',
            :'created' => :'created',
            :'updated' => :'updated',
            :'created_by_id' => :'createdById',
            :'updated_by_id' => :'updatedById',
            :'route_prefix' => :'routePrefix',
            :'destination' => :'destination',
            :'redirect_style' => :'redirectStyle',
            :'content_group_id' => :'contentGroupId',
            :'is_only_after_not_found' => :'isOnlyAfterNotFound',
            :'is_regex' => :'isRegex',
            :'is_match_full_url' => :'isMatchFullUrl',
            :'is_match_query_string' => :'isMatchQueryString',
            :'is_pattern' => :'isPattern',
            :'is_trailing_slash_optional' => :'isTrailingSlashOptional',
            :'is_protocol_agnostic' => :'isProtocolAgnostic',
            :'name' => :'name',
            :'precedence' => :'precedence',
            :'deleted_at' => :'deletedAt',
            :'note' => :'note',
            :'label' => :'label',
            :'internally_created' => :'internallyCreated',
            :'cos_object_type' => :'cosObjectType',
            :'cdn_purge_embargo_time' => :'cdnPurgeEmbargoTime'
          }
        end

        # Attribute type mapping.
        def self.openapi_types
          {
            :'id' => :'Integer',
            :'portal_id' => :'Integer',
            :'created' => :'Integer',
            :'updated' => :'Integer',
            :'created_by_id' => :'Integer',
            :'updated_by_id' => :'Integer',
            :'route_prefix' => :'String',
            :'destination' => :'String',
            :'redirect_style' => :'Integer',
            :'content_group_id' => :'Integer',
            :'is_only_after_not_found' => :'Boolean',
            :'is_regex' => :'Boolean',
            :'is_match_full_url' => :'Boolean',
            :'is_match_query_string' => :'Boolean',
            :'is_pattern' => :'Boolean',
            :'is_trailing_slash_optional' => :'Boolean',
            :'is_protocol_agnostic' => :'Boolean',
            :'name' => :'String',
            :'precedence' => :'Integer',
            :'deleted_at' => :'Integer',
            :'note' => :'String',
            :'label' => :'String',
            :'internally_created' => :'Boolean',
            :'cos_object_type' => :'String',
            :'cdn_purge_embargo_time' => :'Integer'
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
            fail ArgumentError, "The input argument (attributes) must be a hash in `Hubspot::Cms::UrlRedirects::UrlMapping` initialize method"
          end

          # check to see if the attribute exists and convert string to symbol for hash key
          attributes = attributes.each_with_object({}) { |(k, v), h|
            if (!self.class.attribute_map.key?(k.to_sym))
              fail ArgumentError, "`#{k}` is not a valid attribute in `Hubspot::Cms::UrlRedirects::UrlMapping`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
            end
            h[k.to_sym] = v
          }

          if attributes.key?(:'id')
            self.id = attributes[:'id']
          end

          if attributes.key?(:'portal_id')
            self.portal_id = attributes[:'portal_id']
          end

          if attributes.key?(:'created')
            self.created = attributes[:'created']
          end

          if attributes.key?(:'updated')
            self.updated = attributes[:'updated']
          end

          if attributes.key?(:'created_by_id')
            self.created_by_id = attributes[:'created_by_id']
          end

          if attributes.key?(:'updated_by_id')
            self.updated_by_id = attributes[:'updated_by_id']
          end

          if attributes.key?(:'route_prefix')
            self.route_prefix = attributes[:'route_prefix']
          end

          if attributes.key?(:'destination')
            self.destination = attributes[:'destination']
          end

          if attributes.key?(:'redirect_style')
            self.redirect_style = attributes[:'redirect_style']
          end

          if attributes.key?(:'content_group_id')
            self.content_group_id = attributes[:'content_group_id']
          end

          if attributes.key?(:'is_only_after_not_found')
            self.is_only_after_not_found = attributes[:'is_only_after_not_found']
          end

          if attributes.key?(:'is_regex')
            self.is_regex = attributes[:'is_regex']
          end

          if attributes.key?(:'is_match_full_url')
            self.is_match_full_url = attributes[:'is_match_full_url']
          end

          if attributes.key?(:'is_match_query_string')
            self.is_match_query_string = attributes[:'is_match_query_string']
          end

          if attributes.key?(:'is_pattern')
            self.is_pattern = attributes[:'is_pattern']
          end

          if attributes.key?(:'is_trailing_slash_optional')
            self.is_trailing_slash_optional = attributes[:'is_trailing_slash_optional']
          end

          if attributes.key?(:'is_protocol_agnostic')
            self.is_protocol_agnostic = attributes[:'is_protocol_agnostic']
          end

          if attributes.key?(:'name')
            self.name = attributes[:'name']
          end

          if attributes.key?(:'precedence')
            self.precedence = attributes[:'precedence']
          end

          if attributes.key?(:'deleted_at')
            self.deleted_at = attributes[:'deleted_at']
          end

          if attributes.key?(:'note')
            self.note = attributes[:'note']
          end

          if attributes.key?(:'label')
            self.label = attributes[:'label']
          end

          if attributes.key?(:'internally_created')
            self.internally_created = attributes[:'internally_created']
          end

          if attributes.key?(:'cos_object_type')
            self.cos_object_type = attributes[:'cos_object_type']
          end

          if attributes.key?(:'cdn_purge_embargo_time')
            self.cdn_purge_embargo_time = attributes[:'cdn_purge_embargo_time']
          end
        end

        # Show invalid properties with the reasons. Usually used together with valid?
        # @return Array for valid properties with the reasons
        def list_invalid_properties
          invalid_properties = Array.new
          if @id.nil?
            invalid_properties.push('invalid value for "id", id cannot be nil.')
          end

          if @portal_id.nil?
            invalid_properties.push('invalid value for "portal_id", portal_id cannot be nil.')
          end

          if @created.nil?
            invalid_properties.push('invalid value for "created", created cannot be nil.')
          end

          if @updated.nil?
            invalid_properties.push('invalid value for "updated", updated cannot be nil.')
          end

          if @created_by_id.nil?
            invalid_properties.push('invalid value for "created_by_id", created_by_id cannot be nil.')
          end

          if @updated_by_id.nil?
            invalid_properties.push('invalid value for "updated_by_id", updated_by_id cannot be nil.')
          end

          if @route_prefix.nil?
            invalid_properties.push('invalid value for "route_prefix", route_prefix cannot be nil.')
          end

          if @destination.nil?
            invalid_properties.push('invalid value for "destination", destination cannot be nil.')
          end

          if @redirect_style.nil?
            invalid_properties.push('invalid value for "redirect_style", redirect_style cannot be nil.')
          end

          if @content_group_id.nil?
            invalid_properties.push('invalid value for "content_group_id", content_group_id cannot be nil.')
          end

          if @is_only_after_not_found.nil?
            invalid_properties.push('invalid value for "is_only_after_not_found", is_only_after_not_found cannot be nil.')
          end

          if @is_regex.nil?
            invalid_properties.push('invalid value for "is_regex", is_regex cannot be nil.')
          end

          if @is_match_full_url.nil?
            invalid_properties.push('invalid value for "is_match_full_url", is_match_full_url cannot be nil.')
          end

          if @is_match_query_string.nil?
            invalid_properties.push('invalid value for "is_match_query_string", is_match_query_string cannot be nil.')
          end

          if @is_pattern.nil?
            invalid_properties.push('invalid value for "is_pattern", is_pattern cannot be nil.')
          end

          if @is_trailing_slash_optional.nil?
            invalid_properties.push('invalid value for "is_trailing_slash_optional", is_trailing_slash_optional cannot be nil.')
          end

          if @is_protocol_agnostic.nil?
            invalid_properties.push('invalid value for "is_protocol_agnostic", is_protocol_agnostic cannot be nil.')
          end

          if @name.nil?
            invalid_properties.push('invalid value for "name", name cannot be nil.')
          end

          if @precedence.nil?
            invalid_properties.push('invalid value for "precedence", precedence cannot be nil.')
          end

          if @deleted_at.nil?
            invalid_properties.push('invalid value for "deleted_at", deleted_at cannot be nil.')
          end

          if @note.nil?
            invalid_properties.push('invalid value for "note", note cannot be nil.')
          end

          if @label.nil?
            invalid_properties.push('invalid value for "label", label cannot be nil.')
          end

          if @internally_created.nil?
            invalid_properties.push('invalid value for "internally_created", internally_created cannot be nil.')
          end

          if @cos_object_type.nil?
            invalid_properties.push('invalid value for "cos_object_type", cos_object_type cannot be nil.')
          end

          if @cdn_purge_embargo_time.nil?
            invalid_properties.push('invalid value for "cdn_purge_embargo_time", cdn_purge_embargo_time cannot be nil.')
          end

          invalid_properties
        end

        # Check to see if the all the properties in the model are valid
        # @return true if the model is valid
        def valid?
          return false if @id.nil?
          return false if @portal_id.nil?
          return false if @created.nil?
          return false if @updated.nil?
          return false if @created_by_id.nil?
          return false if @updated_by_id.nil?
          return false if @route_prefix.nil?
          return false if @destination.nil?
          return false if @redirect_style.nil?
          return false if @content_group_id.nil?
          return false if @is_only_after_not_found.nil?
          return false if @is_regex.nil?
          return false if @is_match_full_url.nil?
          return false if @is_match_query_string.nil?
          return false if @is_pattern.nil?
          return false if @is_trailing_slash_optional.nil?
          return false if @is_protocol_agnostic.nil?
          return false if @name.nil?
          return false if @precedence.nil?
          return false if @deleted_at.nil?
          return false if @note.nil?
          return false if @label.nil?
          return false if @internally_created.nil?
          return false if @cos_object_type.nil?
          cos_object_type_validator = EnumAttributeValidator.new('String', ["CONTENT", "EXTENSION_RESOURCE", "LAYOUT", "CUSTOM_WIDGET", "WIDGET", "FORM", "PLACEMENT", "IMAGE", "DOMAIN_SETTINGS", "SITE_SETTINGS", "EMAIL_ADDRESS", "WORKFLOW", "HUBDB_TABLE", "REDIRECT_URL", "DESIGN_FOLDER", "SITE_MAP", "DOMAIN", "BLOG", "FILE", "FOLDER", "SITE_MENU", "THEME", "CONTENT_GROUP", "FOLLOW_ME", "KNOWLEDGE_BASE", "LIST_MEMBERSHIP", "CONTACT_MEMBERSHIP", "PASSWORD_PROTECTED", "UNRESTRICTED_ACCESS", "MARKETPLACE_LISTING", "LAYOUT_SECTION", "THEME_SETTINGS", "VIDEO_PLAYER", "URL_MAPPING", "KNOWLEDGE_CATEGORY", "KNOWLEDGE_HOMEPAGE_CATEGORY", "RAW_ASSET", "GLOBAL_CONTENT", "HUBDB_TABLE_ROW", "BLOG_AUTHOR", "SERVERLESS_FUNCTION", "KNOWLEDGE_CATEGORY_TRANSLATION"])
          return false unless cos_object_type_validator.valid?(@cos_object_type)
          return false if @cdn_purge_embargo_time.nil?
          true
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] cos_object_type Object to be assigned
        def cos_object_type=(cos_object_type)
          validator = EnumAttributeValidator.new('String', ["CONTENT", "EXTENSION_RESOURCE", "LAYOUT", "CUSTOM_WIDGET", "WIDGET", "FORM", "PLACEMENT", "IMAGE", "DOMAIN_SETTINGS", "SITE_SETTINGS", "EMAIL_ADDRESS", "WORKFLOW", "HUBDB_TABLE", "REDIRECT_URL", "DESIGN_FOLDER", "SITE_MAP", "DOMAIN", "BLOG", "FILE", "FOLDER", "SITE_MENU", "THEME", "CONTENT_GROUP", "FOLLOW_ME", "KNOWLEDGE_BASE", "LIST_MEMBERSHIP", "CONTACT_MEMBERSHIP", "PASSWORD_PROTECTED", "UNRESTRICTED_ACCESS", "MARKETPLACE_LISTING", "LAYOUT_SECTION", "THEME_SETTINGS", "VIDEO_PLAYER", "URL_MAPPING", "KNOWLEDGE_CATEGORY", "KNOWLEDGE_HOMEPAGE_CATEGORY", "RAW_ASSET", "GLOBAL_CONTENT", "HUBDB_TABLE_ROW", "BLOG_AUTHOR", "SERVERLESS_FUNCTION", "KNOWLEDGE_CATEGORY_TRANSLATION"])
          unless validator.valid?(cos_object_type)
            fail ArgumentError, "invalid value for \"cos_object_type\", must be one of #{validator.allowable_values}."
          end
          @cos_object_type = cos_object_type
        end

        # Checks equality by comparing each attribute.
        # @param [Object] Object to be compared
        def ==(o)
          return true if self.equal?(o)
          self.class == o.class &&
              id == o.id &&
              portal_id == o.portal_id &&
              created == o.created &&
              updated == o.updated &&
              created_by_id == o.created_by_id &&
              updated_by_id == o.updated_by_id &&
              route_prefix == o.route_prefix &&
              destination == o.destination &&
              redirect_style == o.redirect_style &&
              content_group_id == o.content_group_id &&
              is_only_after_not_found == o.is_only_after_not_found &&
              is_regex == o.is_regex &&
              is_match_full_url == o.is_match_full_url &&
              is_match_query_string == o.is_match_query_string &&
              is_pattern == o.is_pattern &&
              is_trailing_slash_optional == o.is_trailing_slash_optional &&
              is_protocol_agnostic == o.is_protocol_agnostic &&
              name == o.name &&
              precedence == o.precedence &&
              deleted_at == o.deleted_at &&
              note == o.note &&
              label == o.label &&
              internally_created == o.internally_created &&
              cos_object_type == o.cos_object_type &&
              cdn_purge_embargo_time == o.cdn_purge_embargo_time
        end

        # @see the `==` method
        # @param [Object] Object to be compared
        def eql?(o)
          self == o
        end

        # Calculates hash code according to all attributes.
        # @return [Integer] Hash code
        def hash
          [id, portal_id, created, updated, created_by_id, updated_by_id, route_prefix, destination, redirect_style, content_group_id, is_only_after_not_found, is_regex, is_match_full_url, is_match_query_string, is_pattern, is_trailing_slash_optional, is_protocol_agnostic, name, precedence, deleted_at, note, label, internally_created, cos_object_type, cdn_purge_embargo_time].hash
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
          self.class.openapi_types.each_pair do |key, type|
            if type =~ /\AArray<(.*)>/i
              # check to ensure the input is an array given that the attribute
              # is documented as an array but the input is not
              if attributes[self.class.attribute_map[key]].is_a?(Array)
                self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
              end
            elsif !attributes[self.class.attribute_map[key]].nil?
              self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
            end # or else data not found in attributes(hash), not an issue as the data can be optional
          end

          self
        end

        # Deserializes the data based on type
        # @param string type Data type
        # @param string value Value to be deserialized
        # @return [Object] Deserialized data
        def _deserialize(type, value)
          case type.to_sym
          when :DateTime
            DateTime.parse(value)
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
            Hubspot::Cms::UrlRedirects.const_get(type).build_from_hash(value)
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