=begin
#Mailchimp Transactional API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.30
Contact: apihelp@mailchimp.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module MailchimpTransactional
  class MetadataApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add metadata field
    # Add a new custom metadata field to be indexed for the account.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20034, Fixnum, Hash)>] InlineResponse20034 data, response status code and response headers
    def add(body = {})
      data = @api_client.call_api(:POST, '/metadata/add', body)
      data
    end

    # Delete metadata field
    # Delete an existing custom metadata field. Deletion isn&#39;t instataneous, and /metadata/list will continue to return the field until the asynchronous deletion process is complete.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20036, Fixnum, Hash)>] InlineResponse20036 data, response status code and response headers
    def delete(body = {})
      data = @api_client.call_api(:POST, '/metadata/delete', body)
      data
    end

    # List metadata fields
    # Get the list of custom metadata fields indexed for the account.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20033>, Fixnum, Hash)>] Array<InlineResponse20033> data, response status code and response headers
    def list(body = {})
      data = @api_client.call_api(:POST, '/metadata/list', body)
      data
    end

    # Update metadata field
    # Update an existing custom metadata field.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20035, Fixnum, Hash)>] InlineResponse20035 data, response status code and response headers
    def update(body = {})
      data = @api_client.call_api(:POST, '/metadata/update', body)
      data
    end
  end
end
