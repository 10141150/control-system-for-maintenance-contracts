require 'test_helper'

class Log::SignControllerTest < ActionController::TestCase
  test "should get out" do
    get :out
    assert_response :success
  end

end
