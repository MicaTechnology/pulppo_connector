# frozen_string_literal: true

require_relative "lib/pulppo_connector/version"

Gem::Specification.new do |spec|
  spec.name = "pulppo_connector"
  spec.version = PulppoConnector::VERSION
  spec.authors = ["Enrique Gutierrez (Chucheen)"]
  spec.email = ["jegut87@gmail.com"]

  spec.summary = "Pulppo API Client"
  spec.description = "This gem intends to provide a client for the Pulppo API along with some utilities to interact with it."
  spec.homepage = "https://mica.rent"
  spec.required_ruby_version = ">= 3.1"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
