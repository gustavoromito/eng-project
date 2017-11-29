# encoding: utf-8

Dado(/^que sou um usuário válido$/) do
  @user = User.create(:email => 'person1@example.com', :password => 't123456')
end

Dado(/^que estou logado na minha conta$/) do
  visit '/devise_scope/users/sign_in'
  fill_in "Email", :with => @user.email
  fill_in "Password", :with => @user.password
  click_button "Log In"
end

Quando(/^eu vou para a página de posts$/) do
  visit '/posts'
end

Quando(/^clico em "([^"]*)"$/) do |arg1|
  click_link arg1
end

Então(/^eu vou para a página de criação de post$/) do
  visit '/posts/new'
end

Então(/^faço um post com o contéudo de "([^"]*)" e clico em "([^"]*)"$/) do |arg1, arg2|
  fill_in "Status", :with => arg1
  click_button arg2
end

Então(/^quando eu visito a página de posts novamente o meu post está listado como um dos posts$/) do
  Capybara.ignore_hidden_elements = false
  expect(page).to have_content("Bom dia")
end
