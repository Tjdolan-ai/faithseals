# -*- encoding: utf-8 -*-
# stub: strip_attributes 1.14.1 ruby lib

Gem::Specification.new do |s|
  s.name = "strip_attributes".freeze
  s.version = "1.14.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/rmm5t/strip_attributes/issues", "changelog_uri" => "https://github.com/rmm5t/strip_attributes/blob/master/CHANGELOG.md", "funding_uri" => "https://github.com/sponsors/rmm5t", "source_code_uri" => "https://github.com/rmm5t/strip_attributes" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ryan McGeary".freeze]
  s.date = "2024-12-10"
  s.description = "StripAttributes automatically strips all ActiveRecord model attributes of leading and trailing whitespace before validation. If the attribute is blank, it strips the value to nil.".freeze
  s.email = ["ryan@mcgeary.org".freeze]
  s.homepage = "https://github.com/rmm5t/strip_attributes".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "3.4.20".freeze
  s.summary = "Whitespace cleanup for ActiveModel attributes".freeze

  s.installed_by_version = "3.4.20" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<activemodel>.freeze, [">= 3.0", "< 9.0"])
  s.add_development_dependency(%q<active_attr>.freeze, ["~> 0.15"])
  s.add_development_dependency(%q<minitest>.freeze, ["~> 5.0"])
  s.add_development_dependency(%q<minitest-matchers_vaccine>.freeze, ["~> 1.0"])
  s.add_development_dependency(%q<minitest-reporters>.freeze, [">= 0.14.24"])
  s.add_development_dependency(%q<rake>.freeze, [">= 0"])
end
