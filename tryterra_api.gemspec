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

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.2.20"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_dependency "faraday", "~> 1.7"
  spec.add_dependency "faraday_middleware", "~> 1.1"
end
