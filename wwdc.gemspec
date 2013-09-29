# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

require "wwdc/version"

Gem::Specification.new do |s|
  s.name        = "wwdc"
  s.license     = "MIT"
  s.authors     = ["Mattt Thompson"]
  s.email       = "m@mattt.me"
  s.homepage    = "http://mattt.me"
  s.version     = WWDC::VERSION
  s.platform    = Gem::Platform::RUBY
  s.summary     = "WWDC"
  s.description = "A command-line interface for accessing WWDC session content"

  s.add_dependency "commander", "~> 4.1.2"
  s.add_dependency "excon", "~> 0.25.3"

  s.add_development_dependency "rspec"
  s.add_development_dependency "rake"

  s.files         = Dir["./**/*"].reject { |file| file =~ /\.\/(bin|log|pkg|script|spec|test|vendor)/ }
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
