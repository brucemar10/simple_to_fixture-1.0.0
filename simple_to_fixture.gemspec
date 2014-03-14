# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_to_fixture/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_to_fixture"
  spec.version       = SimpleToFixture::VERSION
  spec.authors       = ["Bruce Martin"]
  spec.email         = ["cyber.bruce@yahoo.com"]
  spec.description   = %q{Simple and easily add a .to_fixure method to any ActiveRecord Model instance.}
 
  spec.summary       = %q{Adds a Model.to_fixture('one') to any ActiveRecord model, which 
                        automatically creates and appends to fixture files for quick 
                        testing of a real model.  
                        
                        Very handy for testing a new business problem or scenario, with
                        a sample record that is having the problem.}
  
  spec.homepage      = "https://github.com/brucemar10/simple_to_fixture-1.0.0"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "activerecord"
  spec.add_dependency "rails"
  
  
end
