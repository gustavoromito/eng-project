FactoryBot.define do
	factory :post do
		content "TestPost"
		 association :user
	end
end