# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jekyll-github-metadata/version"

Gem::Specification.new do |spec|
  spec.name          = "jekyll-github-metadata"
  spec.version       = Jekyll::GitHubMetadata::VERSION
  spec.authors       = ["Parker Moore"]
  spec.email         = ["parkrmoore@gmail.com"]
  spec.summary       = "The site.github namespace"
  spec.homepage      = "https://github.com/parkr/github-metadata"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").grep(%r!^(lib|bin)/!)
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "jekyll", ENV["JEKYLL_VERSION"] ? "~> #{ENV["JEKYLL_VERSION"]}" : "~> 3.4"
  spec.add_runtime_dependency "octokit", "~> 4.0", "!= 4.4.0"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "netrc"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rubocop", "~> 0.57.2"
end
