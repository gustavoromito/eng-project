require 'rails_helper'

RSpec.describe Review, type: :model do
	
	subject {
		FactoryBot.create(:review)
	}


	it "é válido se tiver uma nota e comentário" do
		expect(subject).to be_valid	
	end

	it "é válido se não tiver comentário" do

	end

	it "é inválido se não tiver uma nota" do

	end

	it "é válido se tiver um usuário e evento associados" do

	end

	it "é inválido se não tiver um usuário" do

	end

	it "é inválido se não tiver um evento" do

	end

end
