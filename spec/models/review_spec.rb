require 'rails_helper'

RSpec.describe Review, type: :model do
	
	subject {
		FactoryBot.create(:review)
	}

	it "é válido se tiver uma nota e comentário" do
		expect(subject).to be_valid	
	end

	it "é válido se não tiver comentário" do
		subject.commentary = nil
		expect(subject).to be_valid	
	end

	it "é inválido se não tiver uma nota" do
		subject.rate = nil
		expect(subject).to_not be_valid	
	end

	describe "validações de usuário e evento" do
		it { should validate_presence_of(:user_id) }
		it { should validate_presence_of(:event_id) }
	end

end
