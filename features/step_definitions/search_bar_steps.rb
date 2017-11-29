Quando("eu quero encontrar um evento pelo nome dele na página de eventos") do
  visit '/events'
end

Dado("que há um evento com nome {string}") do |string|
  @event = FactoryBot.create(:event, :title => string)
end

Quando("eu insiro {string} na barra de pesquisa e aperto {string}") do |string, string2|
    fill_in 'Busca', :with => string
    click_on string2
end

Então("eu espero ver {string} na página de eventos") do |string|
	visit '/events'
  	expect(page).to have_text(string)
end