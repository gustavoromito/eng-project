require 'rails_helper'

RSpec.describe User, type: :model do

  subject {
  	User.new(
  		email: "valid_email@test.com",
  		password: "valid_pass123",
  		first_name: "Nome_Teste")
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

  it "não é válido sem um nome" do
  	subject.first_name = nil
  	expect(subject).to_not be_valid
  end

  it "é válido sem um sobrenome" do
  	expect(subject).to be_valid
  end

end
