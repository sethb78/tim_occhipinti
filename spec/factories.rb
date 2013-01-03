FactoryGirl.define do
 	factory :user do
	    sequence(:name)  { |n| "Person #{n}" }
	    sequence(:email) { |n| "person_#{n}@example.com"}   
	    password "foobar"
	    password_confirmation "foobar"
	end

	factory :gallery do
		name 			"test gallery"
		description 	"example description"
	end

	factory :photo do
    	description 	"Lorem ipsum"
    	image			"test test"
    	gallery
	end
end

  