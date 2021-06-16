=begin
#Mailchimp Transactional API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.27
Contact: apihelp@mailchimp.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module MailchimpTransactional
  class WhitelistsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add email to whitelist
    # Adds an email to your email rejection whitelist. If the address is currently on your blacklist, that blacklist entry will be removed automatically.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20076, Fixnum, Hash)>] InlineResponse20076 data, response status code and response headers
    def add(body = {})
      data = @api_client.call_api(:POST, '/whitelists/add', body)
      data
    end

    # Remove email from whitelist
    # Removes an email address from the whitelist.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20078, Fixnum, Hash)>] InlineResponse20078 data, response status code and response headers
    def delete(body = {})
      data = @api_client.call_api(:POST, '/whitelists/delete', body)
      data
    end

    # List whitelisted emails
    # Retrieves your email rejection whitelist. You can provide an email address or search prefix to limit the results. Returns up to 1000 results.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20077>, Fixnum, Hash)>] Array<InlineResponse20077> data, response status code and response headers
    def list(body = {})
      data = @api_client.call_api(:POST, '/whitelists/list', body)
      data
    end
  end
end
