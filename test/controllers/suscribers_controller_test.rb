require 'test_helper'

class SuscribersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suscriber = suscribers(:one)
  end

  test "should get index" do
    get suscribers_url
    assert_response :success
  end

  test "should get new" do
    get new_suscriber_url
    assert_response :success
  end

  test "should create suscriber" do
    assert_difference('Suscriber.count') do
      post suscribers_url, params: { suscriber: { email: @suscriber.email } }
    end

    assert_redirected_to suscriber_url(Suscriber.last)
  end

  test "should show suscriber" do
    get suscriber_url(@suscriber)
    assert_response :success
  end

  test "should get edit" do
    get edit_suscriber_url(@suscriber)
    assert_response :success
  end

  test "should update suscriber" do
    patch suscriber_url(@suscriber), params: { suscriber: { email: @suscriber.email } }
    assert_redirected_to suscriber_url(@suscriber)
  end

  test "should destroy suscriber" do
    assert_difference('Suscriber.count', -1) do
      delete suscriber_url(@suscriber)
    end

    assert_redirected_to suscribers_url
  end
end
