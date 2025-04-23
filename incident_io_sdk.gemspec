# frozen_string_literal: true

# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = "incident_io_sdk"
  s.version     = "0.1.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Mustafa Bayar"]
  s.email       = ["mbcoders@gmail.com"]
  s.homepage    = "https://github.com/mustafabayar/incident_io_sdk"
  s.summary     = "Ruby SDK for the incident.io API"
  s.description = "A comprehensive Ruby SDK for interacting with the incident.io API, generated via OpenAPI. Includes full coverage of the REST API endpoints."
  s.license     = "MIT"
  s.required_ruby_version = ">= 2.7"
  s.metadata = {
    "source_code_uri" => "https://github.com/mustafabayar/incident-io-sdk",
    "changelog_uri" => "https://github.com/mustafabayar/incident-io-sdk/releases",
    "bug_tracker_uri" => "https://github.com/mustafabayar/incident-io-sdk/issues",
    "documentation_uri" => "https://docs.incident.io"
  }

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = Dir.glob("lib/**/*") + Dir.glob('spec/**/*') + ["README.md", "LICENSE", "incident_io_sdk.gemspec"]
  s.test_files    = Dir.glob('spec/**/*_spec.rb')
  s.require_paths = ["lib"]
end
