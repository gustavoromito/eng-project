FactoryBot.define do
  factory :merit do	
  	sequence :name do |i|
    	"MeritoDaFabrica#{i}"
  	end
    points 5
    achievement "ConquistaDaFabrica"
  end
end
