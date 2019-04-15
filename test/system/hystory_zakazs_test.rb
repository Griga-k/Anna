require "application_system_test_case"

class HystoryZakazsTest < ApplicationSystemTestCase
  setup do
    @hystory_zakaz = hystory_zakazs(:one)
  end

  test "visiting the index" do
    visit hystory_zakazs_url
    assert_selector "h1", text: "Hystory Zakazs"
  end

  test "creating a Hystory zakaz" do
    visit hystory_zakazs_url
    click_on "New Hystory Zakaz"

    fill_in "Body mail", with: @hystory_zakaz.body_mail
    fill_in "Date time", with: @hystory_zakaz.date_time
    fill_in "Email", with: @hystory_zakaz.email
    click_on "Create Hystory zakaz"

    assert_text "Hystory zakaz was successfully created"
    click_on "Back"
  end

  test "updating a Hystory zakaz" do
    visit hystory_zakazs_url
    click_on "Edit", match: :first

    fill_in "Body mail", with: @hystory_zakaz.body_mail
    fill_in "Date time", with: @hystory_zakaz.date_time
    fill_in "Email", with: @hystory_zakaz.email
    click_on "Update Hystory zakaz"

    assert_text "Hystory zakaz was successfully updated"
    click_on "Back"
  end

  test "destroying a Hystory zakaz" do
    visit hystory_zakazs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hystory zakaz was successfully destroyed"
  end
end
