require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
test "index course page" do
 	get :index
 	assert_response :success
 	assert_not_nil assigns(:courses) #makes sure a courses variable is created in this method
end

test "show courses page" do
	course = FactoryGirl.create(:course)
	get :show, :id => course.id
	assert_response :success
end



end
