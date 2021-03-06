# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'exception_notification/bugsnag/version'

Gem::Specification.new do |spec|
  spec.name          = "exception_notification-bugsnag"
  spec.version       = ExceptionNotification::Bugsnag::VERSION
  spec.license       = "MIT"
  spec.authors       = ["koshigoe"]
  spec.email         = ["koshigoeb@gmail.com"]

  spec.summary       = %q{Send exception info to Bugsnag.}
  spec.description   = %q{Send exception info to Bugsnag.}
  spec.homepage      = "https://github.com/pocke/exception_notification-bugsnag"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.3.0"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"

  spec.add_runtime_dependency 'exception_notification', '>= 4.3.0'
  spec.add_runtime_dependency 'bugsnag', '>= 6'
end
