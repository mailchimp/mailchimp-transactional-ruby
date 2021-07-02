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
  class RejectsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add email to blacklist
    # Adds an email to your email rejection blacklist. Addresses that you add manually will never expire and there is no reputation penalty for removing them from your blacklist. Attempting to blacklist an address that has been whitelisted will have no effect.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20037, Fixnum, Hash)>] InlineResponse20037 data, response status code and response headers
    def add(body = {})
      data = @api_client.call_api(:POST, '/rejects/add', body)
      data
    end

    # Delete email from blacklist
    # Deletes an email rejection. There is no limit to how many rejections you can remove from your blacklist, but keep in mind that each deletion has an affect on your reputation.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20039, Fixnum, Hash)>] InlineResponse20039 data, response status code and response headers
    def delete(body = {})
      data = @api_client.call_api(:POST, '/rejects/delete', body)
      data
    end

    # List blacklisted emails
    # Retrieves your email rejection blacklist. You can provide an email address to limit the results. Returns up to 1000 results. By default, entries that have expired are excluded from the results; set include_expired to true to include them.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20038>, Fixnum, Hash)>] Array<InlineResponse20038> data, response status code and response headers
    def list(body = {})
      data = @api_client.call_api(:POST, '/rejects/list', body)
      data
    end
  end
end
