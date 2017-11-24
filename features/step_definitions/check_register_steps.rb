# encoding: utf-8

Quando("eu vou para a página de Cadastro") do
  visit '/devise_scope/users/sign_up'
end

Quando("preencho os campos com email:{string}, preencho a senha:{string}, preencho a confirmação de senha:{string} e clico em Cadastrar") do |string, string2, string3|
  fill_in "Email", :with => string
  fill_in "Password", :with => string2
  fill_in "Password confirmation", :with => string3
  click_button "Cadastrar"
end

Então("eu vou para a página principal logado na conta como novo usuário") do
  expect(page).to have_content ' Welcome! You have signed up successfully.'
end


