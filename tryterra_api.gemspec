lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "try_terra/version"

Gem::Specification.new do |spec|
  spec.name = "tryterra_api"
  spec.version = TryTerra::VERSION
  spec.authors = ["William Kennedy"]
  spec.email = ["william.kennedy@hey.com"]

  spec.summary = "A simple Ruby wrapper for https://tryterra.co"
  spec.description = ""
  spec.homepage = "https://github.com/williamkennedy/tryterra_api"
  spec.license = "MIT"

  spec.required_ruby_version = ">= 2.5"

  spec.files = Dir["lib/**/*.rb"]
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.2.20"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_dependency "faraday", "~> 1.7"
  spec.add_dependency "faraday_middleware", "~> 1.1"
end
