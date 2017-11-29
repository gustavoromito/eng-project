require 'rails_helper'

RSpec.describe Category, type: :model do

 subject {
 	FactoryBot.create(:category)
 }

 describe "Validações da Categoria" do

 	it "não é válido se não tiver um nome associado" do
 		subject.name = nil
 		expect(subject).to_not be_valid
 	end

 end

end
