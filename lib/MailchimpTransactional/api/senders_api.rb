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
  class SendersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add sender domain
    # Adds a sender domain to your account. Sender domains are added automatically as you send, but you can use this call to add them ahead of time.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20042, Fixnum, Hash)>] InlineResponse20042 data, response status code and response headers
    def add_domain(body = {})
      data = @api_client.call_api(:POST, '/senders/add-domain', body)
      data
    end

    # Check domain settings
    # Checks the SPF and DKIM settings for a domain. If you haven&#39;t already added this domain to your account, it will be added automatically.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20043, Fixnum, Hash)>] InlineResponse20043 data, response status code and response headers
    def check_domain(body = {})
      data = @api_client.call_api(:POST, '/senders/check-domain', body)
      data
    end

    # List sender domains
    # Returns the sender domains that have been added to this account.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20041>, Fixnum, Hash)>] Array<InlineResponse20041> data, response status code and response headers
    def domains(body = {})
      data = @api_client.call_api(:POST, '/senders/domains', body)
      data
    end

    # Get sender info
    # Return more detailed information about a single sender, including aggregates of recent stats.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20045, Fixnum, Hash)>] InlineResponse20045 data, response status code and response headers
    def info(body = {})
      data = @api_client.call_api(:POST, '/senders/info', body)
      data
    end

    # List account senders
    # Return the senders that have tried to use this account.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20040>, Fixnum, Hash)>] Array<InlineResponse20040> data, response status code and response headers
    def list(body = {})
      data = @api_client.call_api(:POST, '/senders/list', body)
      data
    end

    # View sender history
    # Return the recent history (hourly stats for the last 30 days) for a sender.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20046>, Fixnum, Hash)>] Array<InlineResponse20046> data, response status code and response headers
    def time_series(body = {})
      data = @api_client.call_api(:POST, '/senders/time-series', body)
      data
    end

    # Verify domain
    # Sends a verification email in order to verify ownership of a domain. Domain verification is a required step to confirm ownership of a domain. Once a domain has been verified in a Transactional API account, other accounts may not have their messages signed by that domain unless they also verify the domain. This prevents other Transactional API accounts from sending mail signed by your domain.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20044, Fixnum, Hash)>] InlineResponse20044 data, response status code and response headers
    def verify_domain(body = {})
      data = @api_client.call_api(:POST, '/senders/verify-domain', body)
      data
    end
  end
end
