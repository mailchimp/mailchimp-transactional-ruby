# -*- encoding: utf-8 -*-

=begin
#Mailchimp Transactional API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.59
Contact: apihelp@mailchimp.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

$:.push File.expand_path("../lib", __FILE__)
require "MailchimpTransactional/version"

Gem::Specification.new do |s|
  s.name        = "MailchimpTransactional"
  s.version     = MailchimpTransactional::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Mailchimp"]
  s.email       = ["apihelp@mailchimp.com"]
  s.homepage    = "https://github.com/mailchimp/mailchimp-client-lib-codegen"
  s.summary     = "Mailchimp Transactional API Ruby Gem"
  s.description = "The official Ruby client library for the Mailchimp Trainsactional API"
  s.license     = 'Apache-2.0'
  s.required_ruby_version = ">= 1.9"

  s.add_runtime_dependency 'excon', '>= 0.76.0', '<1'
  s.add_runtime_dependency 'json', '~> 2.1', '>= 2.1.0'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'
  s.add_development_dependency 'vcr', '~> 3.0', '>= 3.0.1'
  s.add_development_dependency 'webmock', '~> 1.24', '>= 1.24.3'
  s.add_development_dependency 'autotest', '~> 4.4', '>= 4.4.6'
  s.add_development_dependency 'autotest-rails-pure', '~> 4.1', '>= 4.1.2'
  s.add_development_dependency 'autotest-growl', '~> 0.2', '>= 0.2.16'
  s.add_development_dependency 'autotest-fsevent', '~> 0.2', '>= 0.2.12'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = []
  s.executables   = []
  s.require_paths = ["lib"]
end
