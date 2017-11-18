require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do

    current_user = FactoryBot.create(:user)
    sign_in(current_user)

    assign(:posts, [
      Post.create!(
        :content => "MyText",
        :user => current_user
      ),
      Post.create!(
        :content => "MyText",
        :user => current_user
      )
    ])

  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", :content => "MyText".to_s, :count => 2
  end
end
