require 'test_helper'

class Instructor::SectionsControllerTest < ActionController::TestCase



  test "create new section" do
        user = FactoryGirl.create(:user)
        sign_in user

        course = FactoryGirl.create(:course, :user => user)

        assert_difference 'course.sections.count' do
            post :create, :course_id => course.id, section: { title: "Chapter 1" } 
        end

        assert_redirected_to instructor_course_path(course.id)
        assert_equal 1, course.sections.count

    end



  test "new section creation fails if not signed_in" do
  	@course = FactoryGirl.create(:course)

  	assert_no_difference 'Section.count' do
  	 post :create, course_id: @course.id, section: { title: "Chapter 1"}
  	end

  	assert_redirected_to new_user_session_path
  
  end
end
