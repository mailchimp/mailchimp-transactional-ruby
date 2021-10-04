=begin
#Mailchimp Transactional API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.42
Contact: apihelp@mailchimp.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

# Common files
require 'MailchimpTransactional/api_client'
require 'MailchimpTransactional/api_error'
require 'MailchimpTransactional/version'

# APIs
require 'MailchimpTransactional/api/allowlists_api'
require 'MailchimpTransactional/api/exports_api'
require 'MailchimpTransactional/api/inbound_api'
require 'MailchimpTransactional/api/ips_api'
require 'MailchimpTransactional/api/messages_api'
require 'MailchimpTransactional/api/metadata_api'
require 'MailchimpTransactional/api/rejects_api'
require 'MailchimpTransactional/api/senders_api'
require 'MailchimpTransactional/api/subaccounts_api'
require 'MailchimpTransactional/api/tags_api'
require 'MailchimpTransactional/api/templates_api'
require 'MailchimpTransactional/api/urls_api'
require 'MailchimpTransactional/api/users_api'
require 'MailchimpTransactional/api/webhooks_api'
require 'MailchimpTransactional/api/whitelists_api'

module MailchimpTransactional
  class Client
    def initialize(api_key = '')
      set_api_key(api_key)
    end

    def set_api_key(api_key = '')
      @api_key = api_key
      @api_client = ApiClient.new(@api_key)

      @Allowlists = AllowlistsApi.new(@api_client)
      @Exports = ExportsApi.new(@api_client)
      @Inbound = InboundApi.new(@api_client)
      @Ips = IpsApi.new(@api_client)
      @Messages = MessagesApi.new(@api_client)
      @Metadata = MetadataApi.new(@api_client)
      @Rejects = RejectsApi.new(@api_client)
      @Senders = SendersApi.new(@api_client)
      @Subaccounts = SubaccountsApi.new(@api_client)
      @Tags = TagsApi.new(@api_client)
      @Templates = TemplatesApi.new(@api_client)
      @Urls = UrlsApi.new(@api_client)
      @Users = UsersApi.new(@api_client)
      @Webhooks = WebhooksApi.new(@api_client)
      @Whitelists = WhitelistsApi.new(@api_client)
    end

    def set_default_output_format(output_format)
      @api_client.set_default_output_format(output_format)
    end

    def allowlists
      @Allowlists
    end
    def exports
      @Exports
    end
    def inbound
      @Inbound
    end
    def ips
      @Ips
    end
    def messages
      @Messages
    end
    def metadata
      @Metadata
    end
    def rejects
      @Rejects
    end
    def senders
      @Senders
    end
    def subaccounts
      @Subaccounts
    end
    def tags
      @Tags
    end
    def templates
      @Templates
    end
    def urls
      @Urls
    end
    def users
      @Users
    end
    def webhooks
      @Webhooks
    end
    def whitelists
      @Whitelists
    end
  end
end
