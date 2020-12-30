=begin
#CRM Imports

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Hubspot::Crm::Imports::CoreApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CoreApi' do
  before do
    # run before each test
    @api_instance = Hubspot::Crm::Imports::CoreApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CoreApi' do
    it 'should create an instance of CoreApi' do
      expect(@api_instance).to be_instance_of(Hubspot::Crm::Imports::CoreApi)
    end
  end

  # unit tests for cancel
  # Cancel an active import
  # This allows a developer to cancel an active import.
  # @param import_id 
  # @param [Hash] opts the optional parameters
  # @return [ActionResponse]
  describe 'cancel test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create
  # Start a new import
  # Begins importing data from the specified file resources. This uploads the corresponding file and uses the import request object to convert rows in the files to objects.
  # @param [Hash] opts the optional parameters
  # @option opts [File] :files A list of files containing the data to import
  # @option opts [String] :import_request JSON formatted metadata about the import. This includes a name for the import and the column mappings for each file. See the overview tab for more on the required format.
  # @return [PublicImportResponse]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_by_id
  # Get the information on any import
  # A complete summary of an import record, including any updates.
  # @param import_id 
  # @param [Hash] opts the optional parameters
  # @return [PublicImportResponse]
  describe 'get_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_page
  # Get active imports
  # Returns a paged list of active imports for this account.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
  # @option opts [String] :before 
  # @option opts [Integer] :limit The maximum number of results to display per page.
  # @return [CollectionResponsePublicImportResponse]
  describe 'get_page test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end