Quando("eu clicar no link Sair") do
  click_on 'Sair'
end

Então("eu deslogo na conta") do
  expect(page).to have_content('Entrar')
  expect(page).to have_content('Cadastrar')
  expect(page).to have_content('About')
end
