require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get sign_up" do
    get :sign_up
    assert_response :success
  end

end
