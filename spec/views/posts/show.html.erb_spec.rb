require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  before(:each) do

    current_user = FactoryBot.create(:user)

    @post = assign(:post, Post.create!(
      :content => "MyText",
      :user => current_user
      
    ))
    
    @comments = @post.comments.all
    
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
