# -*- encoding: utf-8 -*-
# stub: hexapdf 1.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "hexapdf".freeze
  s.version = "1.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Thomas Leitner".freeze]
  s.date = "2024-12-04"
  s.description = "HexaPDF is a pure Ruby library with an accompanying application for working with PDF\nfiles.\n\nIn short, it allows creating new PDF files, manipulating existing PDF files, merging multiple\nPDF files into one, extracting meta information, text, images and files from PDF files, securing\nPDF files by encrypting them and optimizing PDF files for smaller file size or other\ncriteria.\n\nHexaPDF was designed with ease of use and performance in mind. It uses lazy loading and lazy\ncomputing when possible and tries to produce small PDF files by default.\n".freeze
  s.email = "t_leitner@gmx.at".freeze
  s.executables = ["hexapdf".freeze]
  s.files = ["bin/hexapdf".freeze]
  s.homepage = "https://hexapdf.gettalong.org".freeze
  s.licenses = ["AGPL-3.0".freeze, "Nonstandard".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.7".freeze)
  s.rubygems_version = "3.4.20".freeze
  s.summary = "HexaPDF - A Versatile PDF Creation and Manipulation Library For Ruby".freeze

  s.installed_by_version = "3.4.20" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<cmdparse>.freeze, ["~> 3.0", ">= 3.0.3"])
  s.add_runtime_dependency(%q<geom2d>.freeze, ["~> 0.4", ">= 0.4.1"])
  s.add_runtime_dependency(%q<openssl>.freeze, [">= 2.2.1"])
  s.add_development_dependency(%q<kramdown>.freeze, ["~> 2.3"])
  s.add_development_dependency(%q<minitest>.freeze, ["~> 5.16"])
  s.add_development_dependency(%q<reline>.freeze, ["~> 0.1"])
  s.add_development_dependency(%q<rubocop>.freeze, ["~> 1.0"])
  s.add_development_dependency(%q<webrick>.freeze, [">= 0"])
  s.add_development_dependency(%q<rake>.freeze, [">= 0"])
  s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
end
