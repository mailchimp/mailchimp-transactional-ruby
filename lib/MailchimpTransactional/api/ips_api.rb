=begin
#Mailchimp Transactional API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.41
Contact: apihelp@mailchimp.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module MailchimpTransactional
  class IpsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Cancel ip warmup
    # Cancels the warmup process for a dedicated IP.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20020, Fixnum, Hash)>] InlineResponse20020 data, response status code and response headers
    def cancel_warmup(body = {})
      data = @api_client.call_api(:POST, '/ips/cancel-warmup', body)
      data
    end

    # Test custom dns
    # Tests whether a domain name is valid for use as the custom reverse DNS for a dedicated IP.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20026, Fixnum, Hash)>] InlineResponse20026 data, response status code and response headers
    def check_custom_dns(body = {})
      data = @api_client.call_api(:POST, '/ips/check-custom-dns', body)
      data
    end

    # Add ip pool
    # Creates a pool and returns it. If a pool already exists with this name, no action will be performed.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20024, Fixnum, Hash)>] InlineResponse20024 data, response status code and response headers
    def create_pool(body = {})
      data = @api_client.call_api(:POST, '/ips/create-pool', body)
      data
    end

    # Delete ip address
    # Deletes a dedicated IP. This is permanent and cannot be undone.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20022, Fixnum, Hash)>] InlineResponse20022 data, response status code and response headers
    def delete(body = {})
      data = @api_client.call_api(:POST, '/ips/delete', body)
      data
    end

    # Delete ip pool
    # Deletes a pool. A pool must be empty before you can delete it, and you cannot delete your default pool.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20025, Fixnum, Hash)>] InlineResponse20025 data, response status code and response headers
    def delete_pool(body = {})
      data = @api_client.call_api(:POST, '/ips/delete-pool', body)
      data
    end

    # Get ip info
    # Retrieves information about a single dedicated IP.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20018, Fixnum, Hash)>] InlineResponse20018 data, response status code and response headers
    def info(body = {})
      data = @api_client.call_api(:POST, '/ips/info', body)
      data
    end

    # List ip addresses
    # Lists your dedicated IPs.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20017>, Fixnum, Hash)>] Array<InlineResponse20017> data, response status code and response headers
    def list(body = {})
      data = @api_client.call_api(:POST, '/ips/list', body)
      data
    end

    # List ip pools
    # Lists your dedicated IP pools.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20023>, Fixnum, Hash)>] Array<InlineResponse20023> data, response status code and response headers
    def list_pools(body = {})
      data = @api_client.call_api(:POST, '/ips/list-pools', body)
      data
    end

    # Get ip pool info
    # Describes a single dedicated IP pool.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20024, Fixnum, Hash)>] InlineResponse20024 data, response status code and response headers
    def pool_info(body = {})
      data = @api_client.call_api(:POST, '/ips/pool-info', body)
      data
    end

    # Request additional ip
    # Requests an additional dedicated IP for your account. Accounts may have one outstanding request at any time, and provisioning requests are processed within 24 hours.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20019, Fixnum, Hash)>] InlineResponse20019 data, response status code and response headers
    def provision(body = {})
      data = @api_client.call_api(:POST, '/ips/provision', body)
      data
    end

    # Set custom dns
    # Configures the custom DNS name for a dedicated IP.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20027, Fixnum, Hash)>] InlineResponse20027 data, response status code and response headers
    def set_custom_dns(body = {})
      data = @api_client.call_api(:POST, '/ips/set-custom-dns', body)
      data
    end

    # Move ip to different pool
    # Moves a dedicated IP to a different pool.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20021, Fixnum, Hash)>] InlineResponse20021 data, response status code and response headers
    def set_pool(body = {})
      data = @api_client.call_api(:POST, '/ips/set-pool', body)
      data
    end

    # Start ip warmup
    # Begins the warmup process for a dedicated IP. During the warmup process, the Transactional API will gradually increase the percentage of your mail that is sent over the warming-up IP, over a period of roughly 30 days. The rest of your mail will be sent over shared IPs or other dedicated IPs in the same pool.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20020, Fixnum, Hash)>] InlineResponse20020 data, response status code and response headers
    def start_warmup(body = {})
      data = @api_client.call_api(:POST, '/ips/start-warmup', body)
      data
    end
  end
end
