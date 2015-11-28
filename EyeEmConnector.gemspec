# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: EyeEmConnector 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "EyeEmConnector"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Andr\u{e9} Rieck"]
  s.date = "2015-11-28"
  s.description = "EyeEm API Wrapper in Ruby"
  s.email = "4ndr3r13ck@googlemail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    "EyeEmConnector.gemspec",
    "Gemfile",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/EyeEmConnector.rb",
    "lib/EyeEmConnector/client.rb",
    "lib/EyeEmConnector/configuration.rb",
    "lib/EyeEmConnector/models/albums.rb",
    "lib/EyeEmConnector/models/missions.rb",
    "lib/EyeEmConnector/models/news.rb",
    "lib/EyeEmConnector/models/photos.rb",
    "lib/EyeEmConnector/models/search.rb",
    "lib/EyeEmConnector/models/topics.rb",
    "lib/EyeEmConnector/models/users.rb",
    "lib/EyeEmConnector/models/venues.rb",
    "lib/EyeEmConnector/request.rb",
    "spec/EyeEmConnector_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/Varek/EyeEmConnector"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "EyeEm API Wrapper in Ruby"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<oauth2>, [">= 0"])
      s.add_runtime_dependency(%q<multi_json>, [">= 0"])
      s.add_runtime_dependency(%q<faraday>, ["~> 0.8.0"])
      s.add_runtime_dependency(%q<faraday_middleware>, [">= 0"])
      s.add_runtime_dependency(%q<rash>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.8.0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.3"])
    else
      s.add_dependency(%q<oauth2>, [">= 0"])
      s.add_dependency(%q<multi_json>, [">= 0"])
      s.add_dependency(%q<faraday>, ["~> 0.8.0"])
      s.add_dependency(%q<faraday_middleware>, [">= 0"])
      s.add_dependency(%q<rash>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.8.0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.3"])
    end
  else
    s.add_dependency(%q<oauth2>, [">= 0"])
    s.add_dependency(%q<multi_json>, [">= 0"])
    s.add_dependency(%q<faraday>, ["~> 0.8.0"])
    s.add_dependency(%q<faraday_middleware>, [">= 0"])
    s.add_dependency(%q<rash>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.8.0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.3"])
  end
end

