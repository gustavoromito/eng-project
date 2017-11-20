require 'rails_helper'

RSpec.describe User, type: :model do

  subject {
  	User.new(
  		email: "valid_email@test.com",
  		password: "valid_pass123"
      )
  }

  it "é válido se o usuário é válido, possui os campos básicos de auth" do
  	expect(subject).to be_valid
  end

  it "não é valido sem um email" do
  	subject.email = nil
  	expect(subject).to_not be_valid
  end

  it "não é válido sem uma senha" do
  	subject.password = nil
  	expect(subject).to_not be_valid
  end

  describe '#full_name' do

    context 'when user does not have neither first_name nor last_name' do

      before do
        subject.first_name = nil
        subject.last_name = nil
      end 

      it 'returns N/A' do
        expect(subject.full_name).to eq('N/A')
      end

    end

    context 'when user does have only first_name' do

      before do
        subject.first_name = 'Nome'
        subject.last_name = nil
      end 

      it 'returns only first_name' do
        expect(subject.full_name).to eq(subject.first_name)
      end

    end

    context 'when user does have either first_name and last_name' do

      before do
        subject.first_name = 'Nome'
        subject.last_name = 'Sobrenome'
      end 

      it 'returns both first and last name' do
        expect(subject.full_name).to eq("Nome Sobrenome")
      end

    end

  end


  def full_name
    user_name = first_name
    user_name += " " + last_name if last_name
    user_name || 'N/A'
  end

end
