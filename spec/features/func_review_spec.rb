# TDD: Implementar funcionalidade de Review
# Feature Test

require 'rails_helper'
require 'test_helper'

feature "avaliação de evento", type: :feature do 

	before(:each) do
		# Instâncias de Usuário, Evento
    	current_user = FactoryBot.create(:user)
    	sign_in(current_user)

    	test_event = FactoryBot.create(:event)

		# Visitar a página de meus eventos
		visit "/events/#{test_event.id}"
		# Criação de Instância de User_Interest
		click_link "ESTOU INTERESSADO!!!"

		visit "/my_events"
	end

	# Cenário: Analisar o evento com um rate e um comentário
	scenario "Realizar a review do evento" do
		click_link 'Avaliar Evento'
		expect(page).to have_content('Nota')
		expect(page).to have_content('Comentário')

		fill_in "Nota", :with => 5;
		fill_in "Comentário", :with => "Muito Bom!"
		click_button 'Enviar'
	end

	# Finaliza redirecionando para a página do evento e mostrando o comentário
	it "Mostra o comentário e a nota do review na página do evento" do
		visit "/my_events"
		click_link 'Ver mais detalhes'
		expect(page).to have_text("Muito Bom!")
	end
	
end