# encoding: utf-8

Quando /^eu vou para a página de registro$/ do
	visit new_user_registration_path
end

E /^preencher os campos email, password e confirmar password com:Email: "test@test.com.br", Password: 12345678, Password confirmation: 12345678$/ do
 	fill_in "user_email", :with => "test@test.com.br"
 	fill_in "user_password", :with => "12345678"
 	fill_in "user_password_confirmation", :with => "12345678"
end 

E /^clicar em "Sign up"$/ do
	click_button('Sign up')
end

Então /^o usuário vai para a página principal logado na conta$/ do
	visit posts_path
end

