# TDD: Implementar funcionalidade de Review
# Feature Test

require 'rails_helper.rb'

feature "avaliação de evento" do 

	before do
		# Instâncias de Usuário, Evento, e Interesse do Usuário
		user_interest = FactoryBot.create(:user_interest)

		# Visitar a página show do evento que o usuário possui interesse
		visit "/events/#{user_interest.event.id}"
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
		expect(page).to have_text("Muito Bom!")
	end
	
end