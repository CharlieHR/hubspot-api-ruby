=begin
#Blog Post endpoints

#\"Use these endpoints for interacting with Blog Posts, Blog Authors, and Blog Tags\"

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Hubspot::Cms::Blogs::BlogPosts::BatchInputJsonNode
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'BatchInputJsonNode' do
  before do
    # run before each test
    @instance = Hubspot::Cms::Blogs::BlogPosts::BatchInputJsonNode.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BatchInputJsonNode' do
    it 'should create an instance of BatchInputJsonNode' do
      expect(@instance).to be_instance_of(Hubspot::Cms::Blogs::BlogPosts::BatchInputJsonNode)
    end
  end
  describe 'test attribute "inputs"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
