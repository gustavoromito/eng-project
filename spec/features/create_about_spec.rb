# Primeiro TDD, página About do projeto
require 'rails_helper.rb'

# Lingua referencia é o inglês
# Inicialmente coloca a feature com o objetivo
# Instancia o cenário

feature 'Criação da página de about' do 
	scenario 'Acessar paǵina de about' do
		# visitar a página inicial
		visit '/'
		# clicar no botão about
		click_link 'About'
		# esperar que a página exibida tenha o conteúdo da about page
		expect(page).to have_content ('About Us - Sobre o Projeto')
	end
end




