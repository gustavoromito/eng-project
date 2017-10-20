require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      Post.create!(
        :attachment => "Attachment",
        :content => "MyText",
        :user => nil
      ),
      Post.create!(
        :attachment => "Attachment",
        :content => "MyText",
        :user => nil
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", :text => "Attachment".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 0
  end
end
