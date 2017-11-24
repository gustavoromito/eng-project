require 'rails_helper'

RSpec.describe Merit, type: :model do

  subject {
  	Merit.new(
  		name: "TestMerit",
  		points: 5,
  		achievement: "TestAchievement"
  		)
  }

  describe 'Validações da Conquista' do


  	it "é válido se possuir nome, pontos e conquista" do
  		expect(subject).to be_valid
  	end

  	it "não é válido sem nome" do
  		subject.name = nil
  		expect(subject).to_not be_valid
  	end

  	it "não é válido sem pontos" do
  		subject.points = nil
  		expect(subject).to_not be_valid
  	end


  	it "não é válido sem conquista" do
  		subject.achievement = nil
  		expect(subject).to_not be_valid
  	end

  end

end
