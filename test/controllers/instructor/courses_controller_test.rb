require 'test_helper'

class Instructor::CoursesControllerTest < ActionController::TestCase

test "course new page" do
	user = FactoryGirl.create(:user)
	sign_in user

	get :new

	assert_response :success
	assert_not_nil assigns(:course)
end

test "should create course" do
	@user = FactoryGirl.create(:user)
	sign_in @user

	assert_difference ('Course.count') do
		post :create, course: {
			:title => 'Intro to Life',
			:description => 'Learn all about life',
			:cost => 10.00
			}
		
	end
	assert_redirected_to instructor_course_path(Course.last)

	assert_equal 1, @user.courses.count
end



test "course new page redirect to sign in" do
  	get :new
  	assert_redirected_to new_user_session_path
  end
end
