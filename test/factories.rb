FactoryGirl.define do  factory :course do
    
  end


	factory :user do
		sequence (:email) {|n| "test#{n}@gmail.com" }


		password "testpassword1"
		password_confirmation "testpassword1"
	end



end
