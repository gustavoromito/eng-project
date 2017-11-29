FactoryBot.define do
	factory :event do
		sequence :id do |n|
			"#{n}"
		end
		association :category
		title "Titulo do Evento"
		category_id 1
	end
end
