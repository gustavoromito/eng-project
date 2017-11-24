# TDD: Implementar funcionalidade de Página de Conquistas
# Feature Test

require 'rails_helper'
require 'test_helper'

feature "Página de Conquistas do Usuário", type: :feature do 

	before(:each) do
		# Existe um usuário válido
		current_user = FactoryBot.create(:user)
		# O usuário realiza login na sua conta
    	sign_in(current_user)
    	# Visita a Tela de Conquistas
    	visit '/merits'
 	end

 	scenario "lista de conquistas com nome, número de pontos, e método de conquista" do
 		@merits.each do |m|
 			line = m.name + '|' + m.points + '|' + m.achievement
 			expect(page).to have_content line
 		end
 	end
end


