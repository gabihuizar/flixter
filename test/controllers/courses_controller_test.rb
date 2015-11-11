require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
 test "index course page" do
 	get :index
 	assert_response :success
end
end
