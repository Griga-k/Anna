require 'test_helper'

class HystoryZakazsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hystory_zakaz = hystory_zakazs(:one)
  end

  test "should get index" do
    get hystory_zakazs_url
    assert_response :success
  end

  test "should get new" do
    get new_hystory_zakaz_url
    assert_response :success
  end

  test "should create hystory_zakaz" do
    assert_difference('HystoryZakaz.count') do
      post hystory_zakazs_url, params: { hystory_zakaz: { body_mail: @hystory_zakaz.body_mail, date_time: @hystory_zakaz.date_time, email: @hystory_zakaz.email } }
    end

    assert_redirected_to hystory_zakaz_url(HystoryZakaz.last)
  end

  test "should show hystory_zakaz" do
    get hystory_zakaz_url(@hystory_zakaz)
    assert_response :success
  end

  test "should get edit" do
    get edit_hystory_zakaz_url(@hystory_zakaz)
    assert_response :success
  end

  test "should update hystory_zakaz" do
    patch hystory_zakaz_url(@hystory_zakaz), params: { hystory_zakaz: { body_mail: @hystory_zakaz.body_mail, date_time: @hystory_zakaz.date_time, email: @hystory_zakaz.email } }
    assert_redirected_to hystory_zakaz_url(@hystory_zakaz)
  end

  test "should destroy hystory_zakaz" do
    assert_difference('HystoryZakaz.count', -1) do
      delete hystory_zakaz_url(@hystory_zakaz)
    end

    assert_redirected_to hystory_zakazs_url
  end
end
