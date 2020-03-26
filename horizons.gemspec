# frozen_string_literal: true

require_relative 'lib/horizons/version'

Gem::Specification.new do |spec|
  spec.name          = "horizons"
  spec.version       = Horizons::VERSION
  spec.authors       = ["Rémy Hannequin"]
  spec.email         = ["remy.hannequin@gmail.com"]

  spec.summary       = "Ruby gem for NASA JPL Horizons"
  spec.homepage      = "https://github.com/rhannequin/horizons"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z lib`.split("\x0")
  end

  spec.require_paths = ["lib"]

  # Tests
  spec.add_development_dependency "rspec"

  # Development Tasks
  spec.add_development_dependency "rake"

  # Debugger
  spec.add_development_dependency "pry"

  # Linting
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "rubocop-rspec"
end
