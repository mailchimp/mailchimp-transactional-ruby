=begin
#Mailchimp Transactional API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.24
Contact: apihelp@mailchimp.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module MailchimpTransactional
  class ExportsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Export activity history
    # Begins an export of your activity history. The activity will be exported to a zip archive containing a single file named activity.csv in the same format as you would be able to export from your account&#39;s activity view. It includes the following fields: Date, Email Address, Sender, Subject, Status, Tags, Opens, Clicks, Bounce Detail. If you have configured any custom metadata fields, they will be included in the exported data.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2004, Fixnum, Hash)>] InlineResponse2004 data, response status code and response headers
    def activity(body = {})
      data = @api_client.call_api(:POST, '/exports/activity', body)
      data
    end

    # View export info
    # Returns information about an export job. If the export job&#39;s state is &#39;complete&#39;, the returned data will include a URL you can use to fetch the results. Every export job produces a zip archive, but the format of the archive is distinct for each job type. The api calls that initiate exports include more details about the output format for that job type.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse200, Fixnum, Hash)>] InlineResponse200 data, response status code and response headers
    def info(body = {})
      data = @api_client.call_api(:POST, '/exports/info', body)
      data
    end

    # List exports
    # Returns a list of your exports.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse2001>, Fixnum, Hash)>] Array<InlineResponse2001> data, response status code and response headers
    def list(body = {})
      data = @api_client.call_api(:POST, '/exports/list', body)
      data
    end

    # Export blacklist
    # Begins an export of your rejection blacklist. The blacklist will be exported to a zip archive containing a single file named rejects.csv that includes the following fields: email, reason, detail, created_at, expires_at, last_event_at, expires_at.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2002, Fixnum, Hash)>] InlineResponse2002 data, response status code and response headers
    def rejects(body = {})
      data = @api_client.call_api(:POST, '/exports/rejects', body)
      data
    end

    # Export whitelist
    # Begins an export of your rejection whitelist. The whitelist will be exported to a zip archive containing a single file named whitelist.csv that includes the following fields: email, detail, created_at.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2003, Fixnum, Hash)>] InlineResponse2003 data, response status code and response headers
    def whitelist(body = {})
      data = @api_client.call_api(:POST, '/exports/whitelist', body)
      data
    end
  end
end
