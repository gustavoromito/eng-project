# encoding: utf-8

Quando /^Vou para a pagina dos eventos$/ do
  visit '/events'
end

E /^clico no botao de "New Event"$/ do
  click_link('New Event')
end

E /^preencher os campos latitude, longitude e endereço com: latitude: -23.5874162, longitude: -46.6576336, endereco: "Parque Ibirapuera"$/ do
  fill_in "event[latitude]", :with => "-23.5874162"
 	fill_in "event[longitude]", :with => "-46.6576336"
 	fill_in "event[address]", :with => "Parque Ibirapuera"
  @category = FactoryBot.create(:category)
end

E /^clicar no botao de criar evento$/ do
  click_button('Create Event')
end

Então /^a pagina de eventos "(.*?)" existe$/ do |eve|
  	visit "/events/1"
end
