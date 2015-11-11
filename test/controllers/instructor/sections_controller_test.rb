require 'test_helper'

class Instructor::SectionsControllerTest < ActionController::TestCase
=begin
	test "new" do
		user = FactoryGirl.create(:user)
		sign_in user

		course = FactoryGirl.create(:course)

		get :new

		assert_response :success
	end
=end
 
  test "new course section is created" do
  	@user = FactoryGirl.create(:user)
  	sign_in user 

  	@course = FactoryGirl.create(:course)

  	assert_difference("Section.count") do
  		post :create, course_id: @course.id, section: { title: "Chapter 1" }
  	end

  	
  	assert_redirected_to instructor_course_path(@course)
  	assert_equal 1, @user.@courses.sections.count
  	
  end



end
