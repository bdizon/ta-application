require 'test_helper'

class AdminOverviewControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_overview_index_url
    assert_response :success
  end

end
