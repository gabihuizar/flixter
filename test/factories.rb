FactoryGirl.define do  


	factory :user do
		sequence (:email) {|n| "test#{n}@gmail.com" }


		password "testpassword1"
		password_confirmation "testpassword1"
	end

	factory :course do
		title "Intro to Life"

		description "Will teach you all about life"

		cost 10.00
	end


end
