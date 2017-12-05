# encoding: utf-8

Dado(/^que sou usuário do sistema$/) do
  @user = User.create(:email => 'usuario@mail.com', :password => 'abc1234')
end

Dado(/^que estou logado no sistema$/) do
  visit '/devise_scope/users/sign_in'
  fill_in "Email", :with => @user.email
  fill_in "Password", :with => @user.password
  click_button "Log In"
end

Quando(/^vou para a página eventos$/) do
  visit '/events'
end

E /^apertar "New Event"$/ do
  click_link('New Event')
end

E /^preencher o campo endereço com: "Shopping Interlagos"$/ do
 	fill_in "event[address]", :with => "Shopping Interlagos"
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
  expect(page).to have_content("Shopping Interlagos")
end
