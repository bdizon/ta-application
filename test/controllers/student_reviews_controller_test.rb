require 'test_helper'

class StudentReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get student_reviews_new_url
    assert_response :success
  end

end
