# encoding: utf-8

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
  post = FactoryBot.create(:post, content: arg1) #Overide do valor padrão para adequar ao teste
  click_button arg2
end

Então(/^quando eu visito a página de posts novamente o meu post está listado como um dos posts$/) do
  visit '/posts'
  expect(page).to have_content("Bom dia")
end
