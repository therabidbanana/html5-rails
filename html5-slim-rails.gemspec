# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "html5/slim_rails/version"

Gem::Specification.new do |s|
  s.name        = "html5-slim-rails"
  s.version     = Html5::SlimRails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["David Haslem"]
  s.email       = ["therabidbanana@gmail.com"]
  s.homepage    = "http://github.com/therabidbanana/html5-slim-rails"
  s.summary     = %q{Rails support for the new compass-html5 gem.}
  s.description = %q{}

  s.rubyforge_project = "html5-slim-rails"

  s.add_dependency "railties",      "~> 3.1.0.rc"
  s.add_dependency "thor",          "~> 0.14"
  s.add_dependency "slim",          "~> 1.0"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
