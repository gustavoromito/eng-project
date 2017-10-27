# encoding: utf-8
# !/usr/bin/ruby

Quando /^eu vou para a página de login$/ do
	  visit '/devise_scope/users/sign_in'
end

E /^preencho o email:joao@usp.com.br, preencho a senha:"123456"e clico em "Entrar"$/ do
  email = 'joao@usp.com.br'
  password = '123456'
  User.new(:email => email, :password => password, :password_confirmation => password).save!
  fill_in "Email", :with => email
  fill_in "Password", :with => password
  click_button "Entrar"
end

Então /^eu vou para a página principal logado na conta$/ do
	expect(page).to have_content 'Welcome to BuddyME!'
end
