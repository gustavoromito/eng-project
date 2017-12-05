# encoding: utf-8

Quando /^eu vou para a página de eventos$/ do
	visit "/events"
end

E /^clicar em "New Event"$/ do
  click_link('New Event')
end

E /^preencher o campo endereço com endereco: "Parque Ibirapuera"$/ do
 	fill_in "event[address]", :with => "Parque Ibirapuera"
	@category = FactoryBot.create(:category)
end

E /^clicar em "Create Event"$/ do
  click_button('Create Event')
end

Então /^o usuário vai para a página do evento para "(.*?)"$/ do |eve|
  visit "/events/1"
end

E /^a latitude esta preenchida com -23.5874162, e longitude: -46.6576336$/ do
  page.should have_content '-23.5874162'
	page.should have_content '-46.6576336'
end
