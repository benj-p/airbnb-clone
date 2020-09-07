require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the flat index" do
    visit '/'
    assert_selector "h1", text: "Flats"
  end
end
