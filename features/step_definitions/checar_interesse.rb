# encoding: utf-8

E /^apertar "New Event"$/ do
  click_link('New Event')
end


E /^apertar "Create Event"$/ do
  click_button('Create Event')
end

Então /^o usuário é redirecionado para "(.*?)"$/ do |eve|
  visit "/events/1"
end

Quando(/^clica em "([^"]*)"$/) do |arg1|
  click_link arg1
end

Então(/^vou para a página "([^"]*)"$/) do |arg1|
	click_link arg1
end

Então(/^quando visito a página "Meus Eventos" o evento aparece lá$/) do
  Capybara.ignore_hidden_elements = false
  expect(page).to have_content("Parque Ibirapuera")
end