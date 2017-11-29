Dado("que exista um evento válido com a categoria {string}") do |string|
	@category = FactoryBot.create(:category, :name => string)
	@event = FactoryBot.create(:event, :category_id => @category.id)
end

Dado("clico no link com o nome {string}") do |string|
	click_on string
end

Então("eu vejo eventos cuja a categoria é {string}") do |string|
	expect(page).to have_text(string, count: 1)
end
