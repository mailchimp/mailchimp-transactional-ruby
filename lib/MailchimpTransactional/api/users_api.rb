=begin
#Mailchimp Transactional API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.23
Contact: apihelp@mailchimp.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module MailchimpTransactional
  class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get user info
    # Return the information about the API-connected user.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20069, Fixnum, Hash)>] InlineResponse20069 data, response status code and response headers
    def info(body = {})
      data = @api_client.call_api(:POST, '/users/info', body)
      data
    end

    # Ping
    # Validate an API key and respond to a ping.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def ping(body = {})
      data = @api_client.call_api(:POST, '/users/ping', body)
      data
    end

    # Ping 2
    # Validate an API key and respond to a ping (JSON parser version).
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20070, Fixnum, Hash)>] InlineResponse20070 data, response status code and response headers
    def ping2(body = {})
      data = @api_client.call_api(:POST, '/users/ping2', body)
      data
    end

    # List account senders
    # Return the senders that have tried to use this account, both verified and unverified.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20040>, Fixnum, Hash)>] Array<InlineResponse20040> data, response status code and response headers
    def senders(body = {})
      data = @api_client.call_api(:POST, '/users/senders', body)
      data
    end
  end
end
