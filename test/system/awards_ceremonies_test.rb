require "application_system_test_case"

class AwardsCeremoniesTest < ApplicationSystemTestCase
  setup do
    @awards_ceremony = awards_ceremonies(:one)
  end

  test "visiting the index" do
    visit awards_ceremonies_url
    assert_selector "h1", text: "Awards Ceremonies"
  end

  test "creating a Awards ceremony" do
    visit awards_ceremonies_url
    click_on "New Awards Ceremony"

    fill_in "Description", with: @awards_ceremony.description
    fill_in "Name", with: @awards_ceremony.name
    click_on "Create Awards ceremony"

    assert_text "Awards ceremony was successfully created"
    click_on "Back"
  end

  test "updating a Awards ceremony" do
    visit awards_ceremonies_url
    click_on "Edit", match: :first

    fill_in "Description", with: @awards_ceremony.description
    fill_in "Name", with: @awards_ceremony.name
    click_on "Update Awards ceremony"

    assert_text "Awards ceremony was successfully updated"
    click_on "Back"
  end

  test "destroying a Awards ceremony" do
    visit awards_ceremonies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Awards ceremony was successfully destroyed"
  end
end
