require 'test_helper'

class AdminHomepageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_homepage_index_url
    assert_response :success
  end

end
