require 'test_helper'

class StudentHomepageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get student_homepage_index_url
    assert_response :success
  end

end
