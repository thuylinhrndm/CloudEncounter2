# -*- encoding: utf-8 -*-
# stub: httpauth 0.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "httpauth"
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Manfred Stienstra"]
  s.date = "2014-01-20"
  s.description = "Library for the HTTP Authentication protocol (RFC 2617)"
  s.email = "manfred@fngtpspec.com"
  s.extra_rdoc_files = ["README.md", "LICENSE"]
  s.files = ["LICENSE", "README.md"]
  s.homepage = "https://github.com/Manfred/HTTPauth"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--charset=utf-8"]
  s.rubygems_version = "2.2.3"
  s.summary = "HTTPauth is a library supporting the full HTTP Authentication protocol as specified in RFC 2617; both Digest Authentication and Basic Authentication."

  s.installed_by_version = "2.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.0"])
  end
end
