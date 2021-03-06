# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/issue_checker/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-issue_checker"
  spec.version       = Ruboty::IssueChecker::VERSION
  spec.authors       = ["kawakubox"]
  spec.email         = ["shigefumi.kawakubo@gmail.com"]

  spec.summary       = %q{github issue check tool.}
  spec.description   = %q{github issue check tool.}
  spec.homepage      = "https://github.com/kawakubox/ruboty-issue_checker"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'octokit'

  spec.add_runtime_dependency "ruboty"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
