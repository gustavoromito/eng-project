FactoryBot.define do
	factory :event do
		sequence :id do |n|
			"#{n}"
		end
		association :category
	end
end