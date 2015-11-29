require 'test_helper'

class Instructor::SectionsControllerTest < ActionController::TestCase



  test "new section creation fails if not signed_in" do
  	@course = FactoryGirl.create(:course)

  	assert_no_difference 'Section.count' do
  	 post :create, course_id: @course.id, section: { title: "Chapter 1"}
  	end

  	assert_redirected_to new_user_session_path
  
  end
end
