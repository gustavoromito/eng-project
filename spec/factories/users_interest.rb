FactoryBot.define do
	factory :user_interest do
		association :event
		association :user
	end
end