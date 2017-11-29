Quando("eu vou para a página de Entrar") do
  visit '/devise_scope/users/sign_in'
end

Quando("eu digito meu email: {string} e senha: {string} e clico em {string}") do |string, string2, string3|
  fill_in "Email", :with => string
  fill_in "Password", :with => string2
  click_on string3
end

Então("eu acesso a minha conta no sistema") do
  expect(page).to have_content("Signed in successfully.")
end