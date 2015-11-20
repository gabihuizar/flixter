require 'test_helper'

class EnrollmentsControllerTest < ActionController::TestCase
=begin
	 test "Student enrollment created" do
	 	user = FactoryGirl.create(:user)
	 	student = FactoryGirl.create(:user)
	 	sign_in student

	 	course = FactoryGirl.create(:course, :user_id => user.id)

	 	assert_difference ['student.enrollments.count', 'course.enrollments.count'], 1 do 
	 		post :create, :user_id => student.id, :course_id => course.id
	 	end
	
	 	enrolled = Enrollment.last
	 	assert_equal student, enrolled.user
	 	assert_equal course, enrolled.course
	 	assert_redirected_to course_path(enrolled.course)
	 end
=end
end
