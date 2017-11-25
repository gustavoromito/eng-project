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
    	# Existem Méritos Associados ao usuário
    	first_merit = FactoryBot.create(:merit)
    	seconde_merit = FactoryBot.create(:merit)
    	third_merit = FactoryBot.create(:merit)

    	@merits = [first_merit, seconde_merit, third_merit]
    	# Visita a Tela de Conquistas
    	visit '/merits'
 	end

 	scenario "lista de conquistas com nome, número de pontos, e método de conquista" do
 		@merits.each do |m|
 			desc_name = m.name
            desc_achv = m.achievement
 			desc_point = m.points
 			expect(page).to have_content desc_name
            expect(page).to have_content desc_achv
 			expect(page).to have_content desc_point
 		end
 	end
end


