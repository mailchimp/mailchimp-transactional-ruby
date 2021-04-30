<p align="center">
  <a href="https://mailchimp.com/developer/">
    <img src="https://raw.githubusercontent.com/mailchimp/mailchimp-client-lib-codegen/master/resources/images/mcdev-banner.png" alt="Mailchimp Developer" width="100%" height="auto">
  </a>
</p>

# Mailchimp Transactional — Ruby

The official Ruby client library for the Mailchimp Transactional API (v1)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build MailchimpTransactional.gemspec
```

Then either install the gem locally:

```shell
gem install ./MailchimpTransactional-1.0.25.gem
```
(for development, run `gem install --dev ./MailchimpTransactional-1.0.25.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'MailchimpTransactional', '~> 1.0.25'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/mailchimp/mailchimp-transactional-ruby, then add the following in the Gemfile:

    gem 'MailchimpTransactional', :git => 'https://github.com/mailchimp/mailchimp-transactional-ruby.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Quick Start

```ruby
require 'MailchimpTransactional'

begin
  client = MailchimpTransactional::Client.new('YOUR_API_KEY')
  resp = client.users.ping
  p resp
rescue MailchimpTransactional::ApiError => e
  puts "Error: #{e}"
end
```

## Sending Requests
All requests are sent via POST and accept a single argument as the request body parameter.
```ruby
client.templates.publish({ name:'My Template' });
```

## Output Formats
Optionally, you can set the default response format for **all requests** to one of the following:
- `json` *(default)*
- `xml`
- `php`
- `yaml`

```ruby
client.set_default_output_format('xml');
```

You can also set the response format for a **single request** by passing in a special `outputFormat` param to the request body.
```ruby
client.senders.list({ outputFormat: 'php' });
```

## PRs and Issues
This repo is autogenerated from https://github.com/mailchimp/mailchimp-client-lib-codegen -- please submit PRs or issues there!

## API Endpoints

All URIs are relative to *https://mandrillapp.com/api/1.0*

| Method | Endpoint |
| ---------- | -------- |
| **exports.activity** | /exports/activity |
| **exports.info** | /exports/info |
| **exports.list** | /exports/list |
| **exports.rejects** | /exports/rejects |
| **exports.whitelist** | /exports/whitelist |
| **inbound.add_domain** | /inbound/add-domain |
| **inbound.add_route** | /inbound/add-route |
| **inbound.check_domain** | /inbound/check-domain |
| **inbound.delete_domain** | /inbound/delete-domain |
| **inbound.delete_route** | /inbound/delete-route |
| **inbound.domains** | /inbound/domains |
| **inbound.routes** | /inbound/routes |
| **inbound.send_raw** | /inbound/send-raw |
| **inbound.update_route** | /inbound/update-route |
| **ips.cancel_warmup** | /ips/cancel-warmup |
| **ips.check_custom_dns** | /ips/check-custom-dns |
| **ips.create_pool** | /ips/create-pool |
| **ips.delete** | /ips/delete |
| **ips.delete_pool** | /ips/delete-pool |
| **ips.info** | /ips/info |
| **ips.list** | /ips/list |
| **ips.list_pools** | /ips/list-pools |
| **ips.pool_info** | /ips/pool-info |
| **ips.provision** | /ips/provision |
| **ips.set_custom_dns** | /ips/set-custom-dns |
| **ips.set_pool** | /ips/set-pool |
| **ips.start_warmup** | /ips/start-warmup |
| **messages.cancel_scheduled** | /messages/cancel-scheduled |
| **messages.content** | /messages/content |
| **messages.info** | /messages/info |
| **messages.list_scheduled** | /messages/list-scheduled |
| **messages.parse** | /messages/parse |
| **messages.reschedule** | /messages/reschedule |
| **messages.search** | /messages/search |
| **messages.search_time_series** | /messages/search-time-series |
| **messages.send** | /messages/send |
| **messages.send_raw** | /messages/send-raw |
| **messages.send_template** | /messages/send-template |
| **metadata.add** | /metadata/add |
| **metadata.delete** | /metadata/delete |
| **metadata.list** | /metadata/list |
| **metadata.update** | /metadata/update |
| **rejects.add** | /rejects/add |
| **rejects.delete** | /rejects/delete |
| **rejects.list** | /rejects/list |
| **senders.add_domain** | /senders/add-domain |
| **senders.check_domain** | /senders/check-domain |
| **senders.domains** | /senders/domains |
| **senders.info** | /senders/info |
| **senders.list** | /senders/list |
| **senders.time_series** | /senders/time-series |
| **senders.verify_domain** | /senders/verify-domain |
| **subaccounts.add** | /subaccounts/add |
| **subaccounts.delete** | /subaccounts/delete |
| **subaccounts.info** | /subaccounts/info |
| **subaccounts.list** | /subaccounts/list |
| **subaccounts.pause** | /subaccounts/pause |
| **subaccounts.resume** | /subaccounts/resume |
| **subaccounts.update** | /subaccounts/update |
| **tags.all_time_series** | /tags/all-time-series |
| **tags.delete** | /tags/delete |
| **tags.info** | /tags/info |
| **tags.list** | /tags/list |
| **tags.time_series** | /tags/time-series |
| **templates.add** | /templates/add |
| **templates.delete** | /templates/delete |
| **templates.info** | /templates/info |
| **templates.list** | /templates/list |
| **templates.publish** | /templates/publish |
| **templates.render** | /templates/render |
| **templates.time_series** | /templates/time-series |
| **templates.update** | /templates/update |
| **urls.add_tracking_domain** | /urls/add-tracking-domain |
| **urls.check_tracking_domain** | /urls/check-tracking-domain |
| **urls.list** | /urls/list |
| **urls.search** | /urls/search |
| **urls.time_series** | /urls/time-series |
| **urls.tracking_domains** | /urls/tracking-domains |
| **users.info** | /users/info |
| **users.ping** | /users/ping |
| **users.ping2** | /users/ping2 |
| **users.senders** | /users/senders |
| **webhooks.add** | /webhooks/add |
| **webhooks.delete** | /webhooks/delete |
| **webhooks.info** | /webhooks/info |
| **webhooks.list** | /webhooks/list |
| **webhooks.update** | /webhooks/update |
| **whitelists.add** | /whitelists/add |
| **whitelists.delete** | /whitelists/delete |
| **whitelists.list** | /whitelists/list |


## Additional Libraries

Mailchimp Transactional libraries are available in the following languages:

<div>
  <a href="https://github.com/mailchimp/mailchimp-transactional-node">
  <img src="https://github.com/mailchimp/mailchimp-client-lib-codegen/blob/master/resources/images/lang_node.png?raw=true" width="44" height="44">
  </a>
  <a href="https://github.com/mailchimp/mailchimp-transactional-php">
  <img src="https://github.com/mailchimp/mailchimp-client-lib-codegen/blob/master/resources/images/lang_php.png?raw=true" width="44" height="44">
  </a>
  <a href="https://github.com/mailchimp/mailchimp-transactional-ruby">
  <img src="https://github.com/mailchimp/mailchimp-client-lib-codegen/blob/master/resources/images/lang_ruby.png?raw=true" width="44" height="44">
  </a>
  <a href="https://github.com/mailchimp/mailchimp-transactional-python">
  <img src="https://github.com/mailchimp/mailchimp-client-lib-codegen/blob/master/resources/images/lang_python.png?raw=true" width="44" height="44">
  </a>
</div>
