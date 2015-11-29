require 'test_helper'

class LessonsControllerTest < ActionController::TestCase
	  test "lesson show page" do
	  	user = FactoryGirl.create(:user)
	  	student = FactoryGirl.create(:user)
	  	sign_in student

	  	course = FactoryGirl.create(:course, :user => user)
	  	section = FactoryGirl.create(:section, :course => course)
	  	lesson = FactoryGirl.create(:lesson, :section => section)
	  	
	  	course.enrollments.create(:user => student)
	  	get :show, :id => lesson.id
	  	assert_response :success
	  end

=begin
	  test "no user sign in redirect to sign in page" do
  		get :show
  		assert_redirected_to new_user_session_path
  	end 
=end
end
