# encoding: utf-8

Dado /^um usuário validado no sistema$/ do
  @user = User.create(:email => 'person1@example.com', :password => 't123456')
end

E /^que esteja logado no site$/ do
  visit '/devise_scope/users/sign_in'
  fill_in "Email", :with => @user.email
  fill_in "Password", :with => @user.password
  click_button "Log In"
end

E ("dado um evento que ja tenha sido criado anteriormente de titulo {string}") do |string|
  @category = FactoryBot.create(:category)
	@event = FactoryBot.create(:event, :title => string)
end

Então /^eu vou para a listagem dos eventos$/ do
  visit "/events"
end

E ("assim que eu clicar no texto {string}") do |str|
  find('a[data-confirm="Are you sure?"]').click
end

Então ("o evento {string} sumirá") do |str|
  expect(page).to have_no_content(str)
end
