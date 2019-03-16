require 'test_helper'

class SkladsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sklad = sklads(:one)
  end

  test "should get index" do
    get sklads_url
    assert_response :success
  end

  test "should get new" do
    get new_sklad_url
    assert_response :success
  end

  test "should create sklad" do
    assert_difference('Sklad.count') do
      post sklads_url, params: { sklad: { artikul: @sklad.artikul, category: @sklad.category, count_zakaz: @sklad.count_zakaz, counttt: @sklad.counttt, draw_dxf: @sklad.draw_dxf, draw_pdf: @sklad.draw_pdf, image: @sklad.image, min_count: @sklad.min_count, name: @sklad.name, name_dxf: @sklad.name_dxf, name_pdf: @sklad.name_pdf, nottte: @sklad.nottte, oldid: @sklad.oldid, price: @sklad.price, save_place: @sklad.save_place, value_types: @sklad.value_types } }
    end

    assert_redirected_to sklad_url(Sklad.last)
  end

  test "should show sklad" do
    get sklad_url(@sklad)
    assert_response :success
  end

  test "should get edit" do
    get edit_sklad_url(@sklad)
    assert_response :success
  end

  test "should update sklad" do
    patch sklad_url(@sklad), params: { sklad: { artikul: @sklad.artikul, category: @sklad.category, count_zakaz: @sklad.count_zakaz, counttt: @sklad.counttt, draw_dxf: @sklad.draw_dxf, draw_pdf: @sklad.draw_pdf, image: @sklad.image, min_count: @sklad.min_count, name: @sklad.name, name_dxf: @sklad.name_dxf, name_pdf: @sklad.name_pdf, nottte: @sklad.nottte, oldid: @sklad.oldid, price: @sklad.price, save_place: @sklad.save_place, value_types: @sklad.value_types } }
    assert_redirected_to sklad_url(@sklad)
  end

  test "should destroy sklad" do
    assert_difference('Sklad.count', -1) do
      delete sklad_url(@sklad)
    end

    assert_redirected_to sklads_url
  end
end
