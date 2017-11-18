FactoryBot.define do
	factory :user do
		sequence :email do |n|
    		"person#{n}@example.com"
  		end
		password "t123456"
		first_name "FName"
		last_name "LName"
	end
end