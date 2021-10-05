=begin
#Mailchimp Transactional API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.43
Contact: apihelp@mailchimp.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module MailchimpTransactional
  class AllowlistsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add email to allowlist
    # Adds an email to your email rejection allowlist. If the address is currently on your denylist, that denylist entry will be removed automatically.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse200, Fixnum, Hash)>] InlineResponse200 data, response status code and response headers
    def add(body = {})
      data = @api_client.call_api(:POST, '/allowlists/add', body)
      data
    end

    # Remove email from allowlist
    # Removes an email address from the allowlist.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2002, Fixnum, Hash)>] InlineResponse2002 data, response status code and response headers
    def delete(body = {})
      data = @api_client.call_api(:POST, '/allowlists/delete', body)
      data
    end

    # List allowlisted emails
    # Retrieves your email rejection allowlist. You can provide an email address or search prefix to limit the results. Returns up to 1000 results.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse2001>, Fixnum, Hash)>] Array<InlineResponse2001> data, response status code and response headers
    def list(body = {})
      data = @api_client.call_api(:POST, '/allowlists/list', body)
      data
    end
  end
end
