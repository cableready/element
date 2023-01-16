# frozen_string_literal: true

module CableReady
  module Element
    module CableCar
      def dispatch(element: false, clear: true)
        payload = element ? operations_in_custom_element : operations_payload
        reset! if clear
        payload
      end
    end
  end
end

::CableReady::CableCar.prepend(::CableReady::Element::CableCar)
