FactoryBot.define do
	factory :category do
		sequence :name do |n|
    		"Categoria#{n}"
  		end
	end
end