require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email2@test.com",
        :password => "adc123"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 1
    assert_select "tr>td", :text => "Last Name".to_s, :count => 1
    #assert_select "tr>td", :text => "Email2@test.com".to_s, :count => 1
  end
end
