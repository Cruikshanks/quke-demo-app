# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)

require "quke_demo_app/version"

Gem::Specification.new do |spec|
  spec.name          = "quke_demo_app"
  spec.version       = QukeDemoApp::VERSION
  spec.authors       = ["Defra"]
  spec.email         = ["alan.cruikshanks@environment-agency.gov.uk"]
  spec.license       = "The Open Government Licence (OGL) Version 3"
  spec.homepage      = "https://github.com/DEFRA/quke-demo-app"
  spec.summary       = "A web app used to demo Quke functionality."
  spec.description   = "A Sinatra web app packaged as a gem that is used to demonstrate https://github/DEFRA/quke"

  spec.files = Dir["{bin,config,lib}/**/*", "LICENSE", "Rakefile", "README.md"]
  spec.test_files = Dir["spec/**/*"]

  spec.require_paths = ["lib"]

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/DEFRA/quke-demo-app"
    spec.metadata["changelog_uri"] = "https://github.com/DEFRA/quke-demo-app/blob/master/CHANGELOG.md"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.bindir        = "exe"
  spec.executables   = ["quke_demo_app"]
  spec.default_executable = "quke_demo_app"

  # Sinatra is a DSL for quickly creating web applications in Ruby with minimal
  # effort. We've used it for creating our demo website
  spec.add_dependency "sinatra", "~> 2.0.2"
  # Thor is a toolkit for building powerful command-line interfaces.
  spec.add_dependency "thor"

  # Test command-line applications with Cucumber-Ruby or RSpec
  spec.add_development_dependency "aruba"
  # Cucumber is a tool for running automated tests written in plain language.
  # It works with Aruba in our case to allow us to run tests through the CLI
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "defra_ruby_style"
  # Allows us to automatically generate the change log from the tags, issues,
  # labels and pull requests on GitHub. Added as a dependency so all dev's have
  # access to it to generate a log, and so they are using the same version.
  # New dev's should first create GitHub personal app token and add it to their
  # ~/.bash_profile (or equivalent)
  # https://github.com/skywinder/github-changelog-generator#github-token
  spec.add_development_dependency "github_changelog_generator"
  # Adds step-by-step debugging and stack navigation capabilities to pry using
  # byebug
  spec.add_development_dependency "pry-byebug"
  # Rack::Test is a small, simple testing API for Rack apps. The sinatra docs
  # state the need to include it when using rspec to test the app
  # http://recipes.sinatrarb.com/p/testing/rspec?#label-RSpec
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "simplecov", "~> 0.17.1"
end
