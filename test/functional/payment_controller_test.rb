require 'test_helper'

class PaymentControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get confirm" do
    get :confirm
    assert_response :success
  end

end
