# frozen_string_literal: true

require "rails/engine"

module CableReady
  module Element
    class Engine < Rails::Engine
      initializer "cable_ready-element.assets" do |app|
        if app.config.respond_to?(:assets)
          app.config.assets.precompile += %w[
            cable_ready-element.js
            cable_ready-element.min.js
            cable_ready-element.min.js.map
            cable_ready-element.umd.js
            cable_ready-element.umd.min.js
            cable_ready-element.umd.min.js.map
          ]
        end
      end

      initializer "cable_ready-element.importmap", before: "importmap" do |app|
        if app.config.respond_to?(:importmap)
          app.config.importmap.paths << Engine.root.join("lib/cable_ready/element/importmap.rb")
          app.config.importmap.cache_sweepers << Engine.root.join("app/assets/javascripts")
        end
      end
    end
  end
end
