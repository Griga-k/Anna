require "application_system_test_case"

class SkladsTest < ApplicationSystemTestCase
  setup do
    @sklad = sklads(:one)
  end

  test "visiting the index" do
    visit sklads_url
    assert_selector "h1", text: "Sklads"
  end

  test "creating a Sklad" do
    visit sklads_url
    click_on "New Sklad"

    fill_in "Artikul", with: @sklad.artikul
    fill_in "Category", with: @sklad.category
    fill_in "Count zakaz", with: @sklad.count_zakaz
    fill_in "Counttt", with: @sklad.counttt
    fill_in "Draw dxf", with: @sklad.draw_dxf
    fill_in "Draw pdf", with: @sklad.draw_pdf
    fill_in "Image", with: @sklad.image
    fill_in "Min count", with: @sklad.min_count
    fill_in "Name", with: @sklad.name
    fill_in "Name dxf", with: @sklad.name_dxf
    fill_in "Name pdf", with: @sklad.name_pdf
    fill_in "Nottte", with: @sklad.nottte
    fill_in "Oldid", with: @sklad.oldid
    fill_in "Price", with: @sklad.price
    fill_in "Save place", with: @sklad.save_place
    fill_in "Value types", with: @sklad.value_types
    click_on "Create Sklad"

    assert_text "Sklad was successfully created"
    click_on "Back"
  end

  test "updating a Sklad" do
    visit sklads_url
    click_on "Edit", match: :first

    fill_in "Artikul", with: @sklad.artikul
    fill_in "Category", with: @sklad.category
    fill_in "Count zakaz", with: @sklad.count_zakaz
    fill_in "Counttt", with: @sklad.counttt
    fill_in "Draw dxf", with: @sklad.draw_dxf
    fill_in "Draw pdf", with: @sklad.draw_pdf
    fill_in "Image", with: @sklad.image
    fill_in "Min count", with: @sklad.min_count
    fill_in "Name", with: @sklad.name
    fill_in "Name dxf", with: @sklad.name_dxf
    fill_in "Name pdf", with: @sklad.name_pdf
    fill_in "Nottte", with: @sklad.nottte
    fill_in "Oldid", with: @sklad.oldid
    fill_in "Price", with: @sklad.price
    fill_in "Save place", with: @sklad.save_place
    fill_in "Value types", with: @sklad.value_types
    click_on "Update Sklad"

    assert_text "Sklad was successfully updated"
    click_on "Back"
  end

  test "destroying a Sklad" do
    visit sklads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sklad was successfully destroyed"
  end
end
