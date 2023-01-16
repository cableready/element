# frozen_string_literal: true

module CableReady
  module Element
    module OperationBuilder
      def operations_in_custom_element
        %(<cable-ready><script type="application/json">#{operations_payload.to_json}</script></cable-ready>)
      end
    end
  end
end

::CableReady::OperationBuilder.prepend(::CableReady::Element::OperationBuilder)
