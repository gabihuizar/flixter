require 'test_helper'

class Instructor::LessonsControllerTest < ActionController::TestCase




	test "new lesson created" do
		@user = FactoryGirl.create(:user)
		sign_in @user

		@course = FactoryGirl.create(:course, :user => @user)
		@section = FactoryGirl.create(:section, :course => @course)

		assert_difference("Lesson.count") do
			post :create, section_id: @section.id, lesson: { title: "Chapter 1",
			subtitle: "How to lose a guy in 10 days",
		 }
		end

		assert_redirected_to instructor_course_path(@section.course)
		assert_equal 1, @section.lessons.count
	end

end
