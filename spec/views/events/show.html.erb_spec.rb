require 'rails_helper'

RSpec.describe "events/show", type: :view do
  before(:each) do

    @event = assign(:event, Event.create!(
      :title => "Title",
      :description => "MyText",
      
    ))

    @event.category = assign(:category, Category.new(
        :name => "Type1",
        :id => 1)
    )

  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Type1/)
  end
end
