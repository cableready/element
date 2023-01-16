# frozen_string_literal: true

require "test_helper"
require "nokogiri"

class CableReady::Element::ViewHelperTest < Minitest::Test
  include CableReady::Broadcaster

  def test_cable_ready_tag_will_render_out_a_custom_element
    element = Nokogiri::HTML.fragment(
      cable_ready_tag(cable_car.console_log(message: "Testy McTestface"))
    )

    assert_equal "cable-ready", element.children.first.name
    script_tag = element.children.first.children.first
    assert_equal "script", script_tag.name
    assert_equal "application/json", script_tag[:type]
    assert_equal [{"operation" => "consoleLog", "message" => "Testy McTestface"}], JSON.parse(script_tag.content)
  end
end
