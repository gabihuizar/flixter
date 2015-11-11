require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  test "instructor includes all parameters" do
  	course = Course.create(title: 'Intro to Life', description: 'Learn all about life', cost: 10.00)
  	assert course.valid?
  	assert_redirect_to instructor_course_path(assigns(course))
  end

  test "instructor doesn't include all parameters" do 
  	course = Course.create(title: 'Intro to Life')
  	assert_not course.valid?
  	
end
