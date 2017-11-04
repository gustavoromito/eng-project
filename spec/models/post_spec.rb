require 'rails_helper'

# Builds and saves an Associate and a Instance : create()

# Builds and saves an Associate, 
# and then builds but does not save a Instance : build()


RSpec.describe Post do
	describe "atributos" do
		it "tem um contéudo/mensagem" do
			post = FactoryBot.build(:post)
			expect(post).to respond_to(:content)
		end
	end

	describe " validações " do
		it { should validate_presence_of(:content) }
		it { should validate_presence_of(:user_id) }
	end
  
	describe " associações " do
		it "tem um único user" do
			post = FactoryBot.create(:post)
			expect(post.user_id).to eq(1)
		end
	end

end
