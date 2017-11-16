FactoryBot.define do
  factory :review do
    rate 5
    commentary "Muito Bom!"
    association :event, :user
  end
end
