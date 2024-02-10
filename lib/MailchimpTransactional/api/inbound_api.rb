=begin
#Mailchimp Transactional API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.59
Contact: apihelp@mailchimp.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module MailchimpTransactional
  class InboundApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add inbound domain
    # Add an inbound domain to your account.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2009, Fixnum, Hash)>] InlineResponse2009 data, response status code and response headers
    def add_domain(body = {})
      data = @api_client.call_api(:POST, '/inbound/add-domain', body)
      data
    end

    # Add mailbox route
    # Add a new mailbox route to an inbound domain.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20013, Fixnum, Hash)>] InlineResponse20013 data, response status code and response headers
    def add_route(body = {})
      data = @api_client.call_api(:POST, '/inbound/add-route', body)
      data
    end

    # Check domain settings
    # Check the MX settings for an inbound domain. The domain must have already been added with the add-domain call.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20010, Fixnum, Hash)>] InlineResponse20010 data, response status code and response headers
    def check_domain(body = {})
      data = @api_client.call_api(:POST, '/inbound/check-domain', body)
      data
    end

    # Delete inbound domain
    # Delete an inbound domain from the account. All mail will stop routing for this domain immediately.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20011, Fixnum, Hash)>] InlineResponse20011 data, response status code and response headers
    def delete_domain(body = {})
      data = @api_client.call_api(:POST, '/inbound/delete-domain', body)
      data
    end

    # Delete mailbox route
    # Delete an existing inbound mailbox route.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20015, Fixnum, Hash)>] InlineResponse20015 data, response status code and response headers
    def delete_route(body = {})
      data = @api_client.call_api(:POST, '/inbound/delete-route', body)
      data
    end

    # List inbound domains
    # List the domains that have been configured for inbound delivery.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse2008>, Fixnum, Hash)>] Array<InlineResponse2008> data, response status code and response headers
    def domains(body = {})
      data = @api_client.call_api(:POST, '/inbound/domains', body)
      data
    end

    # List mailbox routes
    # List the mailbox routes defined for an inbound domain.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20012>, Fixnum, Hash)>] Array<InlineResponse20012> data, response status code and response headers
    def routes(body = {})
      data = @api_client.call_api(:POST, '/inbound/routes', body)
      data
    end

    # Send mime document
    # Take a raw MIME document destined for a domain with inbound domains set up, and send it to the inbound hook exactly as if it had been sent over SMTP.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20016>, Fixnum, Hash)>] Array<InlineResponse20016> data, response status code and response headers
    def send_raw(body = {})
      data = @api_client.call_api(:POST, '/inbound/send-raw', body)
      data
    end

    # Update mailbox route
    # Update the pattern or webhook of an existing inbound mailbox route. If null is provided for any fields, the values will remain unchanged.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20014, Fixnum, Hash)>] InlineResponse20014 data, response status code and response headers
    def update_route(body = {})
      data = @api_client.call_api(:POST, '/inbound/update-route', body)
      data
    end
  end
end
