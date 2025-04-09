# -*- encoding: utf-8 -*-
# stub: azure-storage-blob 2.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "azure-storage-blob".freeze
  s.version = "2.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Microsoft Corporation".freeze]
  s.date = "2021-12-06"
  s.description = "Microsoft Azure Storage Blob Client Library for Ruby".freeze
  s.email = "ascl@microsoft.com".freeze
  s.homepage = "http://github.com/azure/azure-storage-ruby".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0".freeze)
  s.rubygems_version = "3.4.20".freeze
  s.summary = "Official Ruby client library to consume Azure Storage Blob service".freeze

  s.installed_by_version = "3.4.20" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<azure-storage-common>.freeze, ["~> 2.0"])
  s.add_runtime_dependency(%q<nokogiri>.freeze, ["~> 1", ">= 1.10.8"])
  s.add_development_dependency(%q<dotenv>.freeze, ["~> 2.0"])
  s.add_development_dependency(%q<minitest>.freeze, ["~> 5"])
  s.add_development_dependency(%q<minitest-reporters>.freeze, ["~> 1"])
  s.add_development_dependency(%q<mocha>.freeze, ["~> 1.0"])
  s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
  s.add_development_dependency(%q<timecop>.freeze, ["~> 0.7"])
  s.add_development_dependency(%q<yard>.freeze, ["~> 0.9", ">= 0.9.11"])
end
