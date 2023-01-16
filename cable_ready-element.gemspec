# frozen_string_literal: true

require File.expand_path("lib/cable_ready/element/version", __dir__)

Gem::Specification.new do |gem|
  gem.name = "cable_ready-element"
  gem.license = "MIT"
  gem.version = CableReady::Element::VERSION
  gem.authors = ["Nathan Hopkins"]
  gem.email = ["natehop@gmail.com"]
  gem.homepage = "https://github.com/cableready/element"
  gem.summary = "cable-ready custom element"

  gem.files = Dir[
    "lib/**/*.{rb,rake}",
    "app/**/*.rb",
    "app/assets/javascripts/*",
    "bin/*",
    "[A-Z]*"
  ]

  gem.required_ruby_version = ">= 2.7.0"

  rails_version = ">= 5.2"

  gem.add_dependency "actionpack", rails_version
  gem.add_dependency "actionview", rails_version
  gem.add_dependency "activesupport", rails_version
  gem.add_dependency "cable_ready", ">= 5.0.0.pre9"
  gem.add_dependency "railties", rails_version

  gem.add_development_dependency "magic_frozen_string_literal"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "standard", "1.19.1"
  gem.add_development_dependency "standardrb"
end
