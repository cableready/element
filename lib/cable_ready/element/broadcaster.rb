# frozen_string_literal: true

require "active_support/concern"

module CableReady
  module Element
    module Broadcaster
      def cable_ready_tag(cable_instance)
        cable_instance.dispatch(element: true)
      end
    end
  end
end

::CableReady::Broadcaster.prepend(::CableReady::Element::Broadcaster)
