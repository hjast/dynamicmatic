# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dynamicmatic}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nathan Weizenbaum"]
  s.date = %q{2009-10-07}
  s.description = %q{DynamicMatic is a tiny Sinatra extension that integrates Sinatra with StaticMatic. It allows most of your site to be static while having a few dynamic pages that can use the StaticMatic layouts and partials.}
  s.email = %q{nex342@gmail.com}
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    "README.md",
    "Rakefile",
    "VERSION.yml",
    "lib/sinatra/dynamicmatic.rb"
  ]
  s.homepage = %q{http://github.com/nex3/dynamicmatic}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Dynamic StaticMatic pages with Sinatra.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sinatra-sinatra>, [">= 0.10.1"])
      s.add_runtime_dependency(%q<staticmatic>, [">= 0.10.1"])
    else
      s.add_dependency(%q<sinatra-sinatra>, [">= 0.10.1"])
      s.add_dependency(%q<staticmatic>, [">= 0.10.1"])
    end
  else
    s.add_dependency(%q<sinatra-sinatra>, [">= 0.10.1"])
    s.add_dependency(%q<staticmatic>, [">= 0.10.1"])
  end
end
