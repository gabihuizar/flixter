require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  test "instructor includes all parameters" do
  	course = Course.create(title: 'Intro to Life', 
  		description: 'Learn all about life', 
  		cost: 10.00)
  	assert course.valid?
  	
  end

  test "instructor doesn't include description" do 
  	course = Course.create(title: 'Intro to Life', cost: 10.00)
  	assert_not course.valid?
  end
end
