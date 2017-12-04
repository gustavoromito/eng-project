# encoding: utf-8

Dado /^um usuário valido$/ do
  @user = User.create(:email => 'person1@example.com', :password => 't123456')
end

E /^que está logado em sua conta$/ do
  visit '/devise_scope/users/sign_in'
  fill_in "Email", :with => @user.email
  fill_in "Password", :with => @user.password
  click_button "Log In"
end

Quando /^eu clicar para criar um evento$/ do
  visit "/events"
  click_link('New Event')
end

E ("preencher os campos de Title com {string}, Description com {string} e Endereço com {string}") do |str1, str2, str3|
  fill_in "event[title]", :with => str1
 	fill_in "event[description]", :with => str2
 	fill_in "event[address]", :with => str3
  @category = FactoryBot.create(:category)
end

E /^salvar o formulario$/ do
  click_button('Create Event')
end

Então ("o evento criado possuira o texto de {string}") do |str|
  expect(page).to have_content(str)
end

E /^terá aqueles campos preenchidos$/ do
  page.should have_content 'Casa do hamburguer'
  page.should have_content 'Vamos comer hamburguer hoje'
  page.should have_content 'Casa do Joao'
end
