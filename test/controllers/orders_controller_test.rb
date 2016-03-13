require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get deliver" do
    get :deliver
    assert_response :success
  end

  test "should get bill" do
    get :bill
    assert_response :success
  end

end
