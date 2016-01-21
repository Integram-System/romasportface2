require 'test_helper'

class MocksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
