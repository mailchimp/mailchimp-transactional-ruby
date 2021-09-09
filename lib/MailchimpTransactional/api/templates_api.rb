=begin
#Mailchimp Transactional API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.36
Contact: apihelp@mailchimp.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module MailchimpTransactional
  class TemplatesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add template
    # Add a new template.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20057, Fixnum, Hash)>] InlineResponse20057 data, response status code and response headers
    def add(body = {})
      data = @api_client.call_api(:POST, '/templates/add', body)
      data
    end

    # Delete template
    # Delete a template.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20061, Fixnum, Hash)>] InlineResponse20061 data, response status code and response headers
    def delete(body = {})
      data = @api_client.call_api(:POST, '/templates/delete', body)
      data
    end

    # Get template info
    # Get the information for an existing template.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20058, Fixnum, Hash)>] InlineResponse20058 data, response status code and response headers
    def info(body = {})
      data = @api_client.call_api(:POST, '/templates/info', body)
      data
    end

    # List templates
    # Return a list of all the templates available to this user.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20062>, Fixnum, Hash)>] Array<InlineResponse20062> data, response status code and response headers
    def list(body = {})
      data = @api_client.call_api(:POST, '/templates/list', body)
      data
    end

    # Publish template content
    # Publish the content for the template. Any new messages sent using this template will start using the content that was previously in draft.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20060, Fixnum, Hash)>] InlineResponse20060 data, response status code and response headers
    def publish(body = {})
      data = @api_client.call_api(:POST, '/templates/publish', body)
      data
    end

    # Render html template
    # Inject content and optionally merge fields into a template, returning the HTML that results.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20063, Fixnum, Hash)>] InlineResponse20063 data, response status code and response headers
    def render(body = {})
      data = @api_client.call_api(:POST, '/templates/render', body)
      data
    end

    # Get template history
    # Return the recent history (hourly stats for the last 30 days) for a template.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20046>, Fixnum, Hash)>] Array<InlineResponse20046> data, response status code and response headers
    def time_series(body = {})
      data = @api_client.call_api(:POST, '/templates/time-series', body)
      data
    end

    # Update template
    # Update the code for an existing template. If null is provided for any fields, the values will remain unchanged.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20059, Fixnum, Hash)>] InlineResponse20059 data, response status code and response headers
    def update(body = {})
      data = @api_client.call_api(:POST, '/templates/update', body)
      data
    end
  end
end
