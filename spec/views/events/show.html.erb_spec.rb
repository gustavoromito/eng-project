require 'rails_helper'

RSpec.describe "events/show", type: :view do
  before(:each) do

    @categories = assign(:category, Category.all)

    @event = assign(:event, Event.create!(
      :title => "Title",
      :description => "MyText",
      :category => Category.new(
        :name => "MyCategoryName")
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyCategoryName/)
  end
end
