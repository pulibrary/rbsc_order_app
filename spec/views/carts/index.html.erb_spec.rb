require 'rails_helper'

RSpec.describe "carts/index", type: :view do
  before(:each) do
    assign(:carts, [
      Cart.create!(
        :manifest => 1,
        :session => "Session",
        :qty => 2,
        :price => "9.99"
      ),
      Cart.create!(
        :manifest => 1,
        :session => "Session",
        :qty => 2,
        :price => "9.99"
      )
    ])
  end

  it "renders a list of carts" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Session".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
