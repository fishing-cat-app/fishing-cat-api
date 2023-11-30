require "test_helper"

class Api::CurrentUserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_current_user_index_url
    assert_response :success
  end
end
