# -*- encoding: utf-8 -*-
require File.expand_path('../lib/string/irc/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Kentaro Kuribayashi"]
  gem.email         = ["kentarok@gmail.com"]
  gem.description   = %q{IRC-friendlily colorize text.}
  gem.summary       = %q{IRC-friendlily colorize text.}
  gem.homepage      = "http://github.com/kentaro/string-irc"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "string-irc"
  gem.require_paths = ["lib"]
  gem.version       = String::IRC::VERSION

  gem.add_dependency 'rake'
  gem.add_dependency 'rspec'
  gem.add_dependency 'guard'
  gem.add_dependency 'guard-rspec'
end
