require 'test_helper'

class Instructor::CoursesControllerTest < ActionController::TestCase

test "course new page" do
	user = FactoryGirl.create(:user)
	sign_in user

	get :new

	assert_response :success
end

test "created new course & added it to db" do
	@user = FactoryGirl.create(:user)
	sign_in @user

	assert_difference 'Course.count' do
		post :create, {:course => {
			:title => 'Intro to Life',
			:description => 'Learn all about life',
			:cost => 10.00
			}
		}
	end
	assert_redirected_to instructor_course_path(Course.last)

	assert_equal 1, @user.courses.count
end

=begin
test "course show page" do
  	user = FactoryGirl.create(:user)
  	sign_in user

  	course = FactoryGirl.create(:course)
  	
  	get :show, :id => course.id
  	assert_response :success
  end
=end

test "course new page redirect to sign in" do
  	get :new
  	assert_redirected_to new_user_session_path
  end
end
