FactoryBot.define do
  factory :review do
    rate 5
    commentary "Muito Bom!"
    association :user
    association :event
  end
end
