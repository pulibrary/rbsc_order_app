require 'rails_helper'

RSpec.describe "permissions/index", type: :view do
  before(:each) do
    assign(:permissions, [
      Permission.create!(
        :label => "Label",
        :description => "MyText",
        :price => "9.99",
        :fund_code => "Fund Code"
      ),
      Permission.create!(
        :label => "Label",
        :description => "MyText",
        :price => "9.99",
        :fund_code => "Fund Code"
      )
    ])
  end

  it "renders a list of permissions" do
    render
    assert_select "tr>td", :text => "Label".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Fund Code".to_s, :count => 2
  end
end
