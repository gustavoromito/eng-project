# encoding: utf-8
# !/usr/bin/ruby

Quando /^eu vou para a página de cadastro$/ do
	  visit '/devise_scope/users/sign_up'
end

E /^preencho o email:joao@usp.com.br, preencho a senha:"123456", preencho a confirmação de senha:"123456" e clico em "Cadastrar"$/ do
  email = 'joao@usp.com.br'
  password = '123456'
  fill_in "Email", :with => email
  fill_in "Password", :with => password
  fill_in "Password confirmation", :with => password
  click_button "Cadastrar"
end

Então /^eu vou para a página principal logado na conta como novo usuário$/ do
	expect(page).to have_content 'Welcome to BuddyME!'
	DatabaseCleaner.clean
end
