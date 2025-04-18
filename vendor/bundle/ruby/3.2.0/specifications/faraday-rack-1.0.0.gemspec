# -*- encoding: utf-8 -*-
# stub: faraday-rack 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "faraday-rack".freeze
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/lostisland/faraday-rack", "homepage_uri" => "https://github.com/lostisland/faraday-rack", "source_code_uri" => "https://github.com/lostisland/faraday-rack" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["@iMacTia".freeze]
  s.date = "2021-08-01"
  s.description = "Faraday adapter for Rack".freeze
  s.email = ["giuffrida.mattia@gmail.com".freeze]
  s.homepage = "https://github.com/lostisland/faraday-rack".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.0".freeze)
  s.rubygems_version = "3.4.20".freeze
  s.summary = "Faraday adapter for Rack".freeze

  s.installed_by_version = "3.4.20" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_development_dependency(%q<faraday>.freeze, ["~> 1.0"])
  s.add_development_dependency(%q<rack-test>.freeze, [">= 0.6"])
  s.add_development_dependency(%q<bundler>.freeze, ["~> 2.0"])
  s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
  s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.19.0"])
  s.add_development_dependency(%q<multipart-parser>.freeze, ["~> 0.1.1"])
  s.add_development_dependency(%q<webmock>.freeze, ["~> 3.4"])
  s.add_development_dependency(%q<rubocop>.freeze, ["~> 1.12.0"])
  s.add_development_dependency(%q<rubocop-packaging>.freeze, ["~> 0.5"])
  s.add_development_dependency(%q<rubocop-performance>.freeze, ["~> 1.0"])
end
