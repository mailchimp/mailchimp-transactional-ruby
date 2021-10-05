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
  class SubaccountsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add subaccount
    # Add a new subaccount.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20051, Fixnum, Hash)>] InlineResponse20051 data, response status code and response headers
    def add(body = {})
      data = @api_client.call_api(:POST, '/subaccounts/add', body)
      data
    end

    # Delete subaccount
    # Delete an existing subaccount. Any email related to the subaccount will be saved, but stats will be removed and any future sending calls to this subaccount will fail.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20054, Fixnum, Hash)>] InlineResponse20054 data, response status code and response headers
    def delete(body = {})
      data = @api_client.call_api(:POST, '/subaccounts/delete', body)
      data
    end

    # Get subaccount info
    # Given the ID of an existing subaccount, return the data about it.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20052, Fixnum, Hash)>] InlineResponse20052 data, response status code and response headers
    def info(body = {})
      data = @api_client.call_api(:POST, '/subaccounts/info', body)
      data
    end

    # List subaccounts
    # Get the list of subaccounts defined for the account, optionally filtered by a prefix.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20050>, Fixnum, Hash)>] Array<InlineResponse20050> data, response status code and response headers
    def list(body = {})
      data = @api_client.call_api(:POST, '/subaccounts/list', body)
      data
    end

    # Pause subaccount
    # Pause a subaccount&#39;s sending. Any future emails delivered to this subaccount will be queued for a maximum of 3 days until the subaccount is resumed.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20055, Fixnum, Hash)>] InlineResponse20055 data, response status code and response headers
    def pause(body = {})
      data = @api_client.call_api(:POST, '/subaccounts/pause', body)
      data
    end

    # Resume subaccount
    # Resume a paused subaccount&#39;s sending.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20056, Fixnum, Hash)>] InlineResponse20056 data, response status code and response headers
    def resume(body = {})
      data = @api_client.call_api(:POST, '/subaccounts/resume', body)
      data
    end

    # Update subaccount
    # Update an existing subaccount.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20053, Fixnum, Hash)>] InlineResponse20053 data, response status code and response headers
    def update(body = {})
      data = @api_client.call_api(:POST, '/subaccounts/update', body)
      data
    end
  end
end
