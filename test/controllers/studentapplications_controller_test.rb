require 'test_helper'

class StudentapplicationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get studentapplications_new_url
    assert_response :success
  end

end
