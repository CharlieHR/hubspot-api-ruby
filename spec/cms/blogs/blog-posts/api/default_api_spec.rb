=begin
#Blog Post endpoints

#\"Use these endpoints for interacting with Blog Posts, Blog Authors, and Blog Tags\"

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Hubspot::Cms::Blogs::BlogPosts::DefaultApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DefaultApi' do
  before do
    # run before each test
    @api_instance = Hubspot::Cms::Blogs::BlogPosts::DefaultApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DefaultApi' do
    it 'should create an instance of DefaultApi' do
      expect(@api_instance).to be_instance_of(Hubspot::Cms::Blogs::BlogPosts::DefaultApi)
    end
  end

  # unit tests for archive
  # Archive a batch of Blog Posts
  # Archive the Blog Post objects identified in the request body.
  # @param batch_input_string The JSON array of Blog Post ids.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'archive test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for archive_0
  # Delete a Blog Post
  # Delete the Blog Post object identified by the id in the path.
  # @param object_id The Blog Post id.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :archived Whether to return only results that have been archived.
  # @return [nil]
  describe 'archive_0 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for clone
  # Clone a Blog Post
  # Clone a Blog.
  # @param content_clone_request_v_next The JSON representation of the ContentCloneRequest object.
  # @param [Hash] opts the optional parameters
  # @return [BlogPost]
  describe 'clone test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create
  # Create a new Blog Post
  # Create a new Blog Post.
  # @param blog_post The JSON representation of a new Blog Post.
  # @param [Hash] opts the optional parameters
  # @return [BlogPost]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_0
  # Create a batch of Blog Posts
  # Create the Blog Post objects detailed in the request body.
  # @param batch_input_blog_post The JSON array of new Blog Posts to create.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'create_0 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_by_id
  # Retrieve a Blog Post
  # Retrieve the Blog Post object identified by the id in the path.
  # @param object_id The Blog Post id.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :archived Specifies whether to return archived Blog Posts. Defaults to &#x60;false&#x60;.
  # @return [BlogPost]
  describe 'get_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_draft_by_id
  # Retrieve the full draft version of the Blog Post
  # Retrieve the full draft version of the Blog Post.
  # @param object_id The Blog Post id.
  # @param [Hash] opts the optional parameters
  # @return [BlogPost]
  describe 'get_draft_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_page
  # Get all Blog Posts
  # Get the list of blog posts. Supports paging and filtering. This method would be useful for an integration that examined these models and used an external service to suggest edits. 
  # @param [Hash] opts the optional parameters
  # @option opts [DateTime] :created_at Only return Blog Posts created at exactly the specified time.
  # @option opts [DateTime] :created_after Only return Blog Posts created after the specified time.
  # @option opts [DateTime] :created_before Only return Blog Posts created before the specified time.
  # @option opts [DateTime] :updated_at Only return Blog Posts last updated at exactly the specified time.
  # @option opts [DateTime] :updated_after Only return Blog Posts last updated after the specified time.
  # @option opts [DateTime] :updated_before Only return Blog Posts last updated before the specified time.
  # @option opts [Array<String>] :sort Specifies which fields to use for sorting results. Valid fields are &#x60;name&#x60;, &#x60;createdAt&#x60;, &#x60;updatedAt&#x60;, &#x60;createdBy&#x60;, &#x60;updatedBy&#x60;. &#x60;createdAt&#x60; will be used by default.
  # @option opts [String] :after The cursor token value to get the next set of results. You can get this from the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
  # @option opts [Integer] :limit The maximum number of results to return. Default is 100.
  # @option opts [Boolean] :archived Specifies whether to return archived Blog Posts. Defaults to &#x60;false&#x60;.
  # @return [CollectionResponseWithTotalBlogPostForwardPaging]
  describe 'get_page test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_previous_version
  # Retrieves a previous version of a blog post
  # Retrieves a previous version of a blog post.
  # @param object_id The Blog Post id.
  # @param revision_id The Blog Post version id.
  # @param [Hash] opts the optional parameters
  # @return [VersionBlogPost]
  describe 'get_previous_version test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_previous_versions
  # Retrieves all the previous versions of a blog post
  # Retrieves all the previous versions of a blog post.
  # @param object_id The Blog Post id.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :after The cursor token value to get the next set of results. You can get this from the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
  # @option opts [String] :before 
  # @option opts [Integer] :limit The maximum number of results to return. Default is 100.
  # @return [CollectionResponseWithTotalVersionBlogPost]
  describe 'get_previous_versions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for push_live
  # Push Blog Post draft edits live
  # Take any changes from the draft version of the Blog Post and apply them to the live version.
  # @param object_id The id of the Blog Post for which it&#39;s draft will be pushed live.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'push_live test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for read
  # Retrieve a batch of Blog Posts
  # Retrieve the Blog Post objects identified in the request body.
  # @param batch_input_string The JSON array of Blog Post ids.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :archived Specifies whether to return archived Blog Posts. Defaults to &#x60;false&#x60;.
  # @return [Object]
  describe 'read test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reset_draft
  # Reset the Blog Post draft to the live version
  # Discards any edits and resets the draft to the live version.
  # @param object_id The id of the Blog Post for which it&#39;s draft will be reset.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'reset_draft test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for restore_previous_version
  # Restore a previous version of a blog post
  # Takes a specified version of a blog post and restores it.
  # @param object_id The Blog Post id.
  # @param revision_id The Blog Post version id to restore.
  # @param [Hash] opts the optional parameters
  # @return [BlogPost]
  describe 'restore_previous_version test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for restore_previous_version_to_draft
  # Restore a previous version of a blog post, to the draft version of the blog post
  # Takes a specified version of a blog post, sets it as the new draft version of the blog post.
  # @param object_id The Blog Post id.
  # @param revision_id The Blog Post version id to restore.
  # @param [Hash] opts the optional parameters
  # @return [BlogPost]
  describe 'restore_previous_version_to_draft test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for schedule
  # Schedule a Blog Post to be Published
  # Schedule a Blog Post to be Published.
  # @param content_schedule_request_v_next The JSON representation of the ContentCloneRequestVNext object.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'schedule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Update a batch of Blog Posts
  # Update the Blog Post objects identified in the request body.
  # @param batch_input_json_node 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :archived Whether to return only results that have been archived.
  # @return [Object]
  describe 'update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_0
  # Update a Blog Post
  # Sparse updates a single Blog Post object identified by the id in the path. All the column values need not be specified. Only the that need to be modified can be specified. 
  # @param object_id The Blog Post id.
  # @param blog_post The JSON representation of the updated Blog Post.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :archived Specifies whether to update archived Blog Posts. Defaults to &#x60;false&#x60;.
  # @return [BlogPost]
  describe 'update_0 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_draft
  # Update a Blog Post draft
  # Sparse updates the draft version of a single Blog Post object identified by the id in the path. All the column values need not be specified. Only the that need to be modified can be specified. 
  # @param object_id The Blog Post id.
  # @param blog_post The JSON representation of the updated Blog Post to be applied to the draft.
  # @param [Hash] opts the optional parameters
  # @return [BlogPost]
  describe 'update_draft test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
