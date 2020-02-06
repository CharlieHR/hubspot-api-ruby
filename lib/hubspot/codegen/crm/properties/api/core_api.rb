=begin
#Properties

#All HubSpot objects store data in default and custom properties. These endpoints provide access to read and modify object properties in HubSpot.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'cgi'

module Hubspot
  module Client
    module Crm
      module Properties
        module Api
          class CoreApi
            attr_accessor :api_client

            def initialize(api_client = ApiClient.default)
              @api_client = api_client
            end
            # Archive a property
            # Move a property identified by {propertyName} to the recycling bin.
            # @param object_type [String] 
            # @param property_name [String] 
            # @param [Hash] opts the optional parameters
            # @return [nil]
            def archive(object_type, property_name, opts = {})
              archive_with_http_info(object_type, property_name, opts)
              nil
            end

            # Archive a property
            # Move a property identified by {propertyName} to the recycling bin.
            # @param object_type [String] 
            # @param property_name [String] 
            # @param [Hash] opts the optional parameters
            # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
            def archive_with_http_info(object_type, property_name, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: CoreApi.archive ...'
              end
              # verify the required parameter 'object_type' is set
              if @api_client.config.client_side_validation && object_type.nil?
                fail ArgumentError, "Missing the required parameter 'object_type' when calling CoreApi.archive"
              end
              # verify the required parameter 'property_name' is set
              if @api_client.config.client_side_validation && property_name.nil?
                fail ArgumentError, "Missing the required parameter 'property_name' when calling CoreApi.archive"
              end
              # resource path
              local_var_path = '/{objectType}/{propertyName}'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s).gsub('%2F', '/')).sub('{' + 'propertyName' + '}', CGI.escape(property_name.to_s).gsub('%2F', '/'))

              # query parameters
              query_params = opts[:query_params] || {}

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['*/*'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:body] 

              # return_type
              return_type = opts[:return_type] 

              # auth_names
              auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

              new_options = opts.merge(
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => return_type
              )

              data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: CoreApi#archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end

            # Create a property
            # Create and return a copy of a new property for the specified object type.
            # @param object_type [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [PropertyCreate] :property_create 
            # @return [Property]
            def create(object_type, opts = {})
              data, _status_code, _headers = create_with_http_info(object_type, opts)
              data
            end

            # Create a property
            # Create and return a copy of a new property for the specified object type.
            # @param object_type [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [PropertyCreate] :property_create 
            # @return [Array<(Property, Integer, Hash)>] Property data, response status code and response headers
            def create_with_http_info(object_type, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: CoreApi.create ...'
              end
              # verify the required parameter 'object_type' is set
              if @api_client.config.client_side_validation && object_type.nil?
                fail ArgumentError, "Missing the required parameter 'object_type' when calling CoreApi.create"
              end
              # resource path
              local_var_path = '/{objectType}'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s).gsub('%2F', '/'))

              # query parameters
              query_params = opts[:query_params] || {}

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
              # HTTP header 'Content-Type'
              header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:body] || @api_client.object_to_http_body(opts[:'property_create']) 

              # return_type
              return_type = opts[:return_type] || 'Property' 

              # auth_names
              auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

              new_options = opts.merge(
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => return_type
              )

              data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: CoreApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end

            # Read all properties
            # Read all existing properties for the specified object type and HubSpot account.
            # @param object_type [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [Boolean] :archived Whether to return only results that have been archived. (default to false)
            # @return [CollectionResponseProperty]
            def get_all(object_type, opts = {})
              data, _status_code, _headers = get_all_with_http_info(object_type, opts)
              data
            end

            # Read all properties
            # Read all existing properties for the specified object type and HubSpot account.
            # @param object_type [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [Boolean] :archived Whether to return only results that have been archived.
            # @return [Array<(CollectionResponseProperty, Integer, Hash)>] CollectionResponseProperty data, response status code and response headers
            def get_all_with_http_info(object_type, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: CoreApi.get_all ...'
              end
              # verify the required parameter 'object_type' is set
              if @api_client.config.client_side_validation && object_type.nil?
                fail ArgumentError, "Missing the required parameter 'object_type' when calling CoreApi.get_all"
              end
              # resource path
              local_var_path = '/{objectType}'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s).gsub('%2F', '/'))

              # query parameters
              query_params = opts[:query_params] || {}
              query_params[:'archived'] = opts[:'archived'] if !opts[:'archived'].nil?

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:body] 

              # return_type
              return_type = opts[:return_type] || 'CollectionResponseProperty' 

              # auth_names
              auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

              new_options = opts.merge(
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => return_type
              )

              data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: CoreApi#get_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end

            # Read a property
            # Read a property identified by {propertyName}.
            # @param object_type [String] 
            # @param property_name [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [Boolean] :archived Whether to return only results that have been archived. (default to false)
            # @return [Property]
            def get_by_name(object_type, property_name, opts = {})
              data, _status_code, _headers = get_by_name_with_http_info(object_type, property_name, opts)
              data
            end

            # Read a property
            # Read a property identified by {propertyName}.
            # @param object_type [String] 
            # @param property_name [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [Boolean] :archived Whether to return only results that have been archived.
            # @return [Array<(Property, Integer, Hash)>] Property data, response status code and response headers
            def get_by_name_with_http_info(object_type, property_name, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: CoreApi.get_by_name ...'
              end
              # verify the required parameter 'object_type' is set
              if @api_client.config.client_side_validation && object_type.nil?
                fail ArgumentError, "Missing the required parameter 'object_type' when calling CoreApi.get_by_name"
              end
              # verify the required parameter 'property_name' is set
              if @api_client.config.client_side_validation && property_name.nil?
                fail ArgumentError, "Missing the required parameter 'property_name' when calling CoreApi.get_by_name"
              end
              # resource path
              local_var_path = '/{objectType}/{propertyName}'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s).gsub('%2F', '/')).sub('{' + 'propertyName' + '}', CGI.escape(property_name.to_s).gsub('%2F', '/'))

              # query parameters
              query_params = opts[:query_params] || {}
              query_params[:'archived'] = opts[:'archived'] if !opts[:'archived'].nil?

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:body] 

              # return_type
              return_type = opts[:return_type] || 'Property' 

              # auth_names
              auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

              new_options = opts.merge(
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => return_type
              )

              data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: CoreApi#get_by_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end

            # Update a property
            # Perform a partial update of a property identified by {propertyName}. Provided fields will be overwritten.
            # @param object_type [String] 
            # @param property_name [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [PropertyUpdate] :property_update 
            # @return [Property]
            def update(object_type, property_name, opts = {})
              data, _status_code, _headers = update_with_http_info(object_type, property_name, opts)
              data
            end

            # Update a property
            # Perform a partial update of a property identified by {propertyName}. Provided fields will be overwritten.
            # @param object_type [String] 
            # @param property_name [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [PropertyUpdate] :property_update 
            # @return [Array<(Property, Integer, Hash)>] Property data, response status code and response headers
            def update_with_http_info(object_type, property_name, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: CoreApi.update ...'
              end
              # verify the required parameter 'object_type' is set
              if @api_client.config.client_side_validation && object_type.nil?
                fail ArgumentError, "Missing the required parameter 'object_type' when calling CoreApi.update"
              end
              # verify the required parameter 'property_name' is set
              if @api_client.config.client_side_validation && property_name.nil?
                fail ArgumentError, "Missing the required parameter 'property_name' when calling CoreApi.update"
              end
              # resource path
              local_var_path = '/{objectType}/{propertyName}'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s).gsub('%2F', '/')).sub('{' + 'propertyName' + '}', CGI.escape(property_name.to_s).gsub('%2F', '/'))

              # query parameters
              query_params = opts[:query_params] || {}

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
              # HTTP header 'Content-Type'
              header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:body] || @api_client.object_to_http_body(opts[:'property_update']) 

              # return_type
              return_type = opts[:return_type] || 'Property' 

              # auth_names
              auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

              new_options = opts.merge(
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => return_type
              )

              data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: CoreApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end
          end
        end
      end
    end
  end
end