require 'rails_helper'

RSpec.describe "carts/new", type: :view do
  before(:each) do
    assign(:cart, Cart.new(
      :manifest => 1,
      :session => "MyString",
      :qty => 1,
      :price => "9.99"
    ))
  end

  it "renders new cart form" do
    render

    assert_select "form[action=?][method=?]", carts_path, "post" do

      assert_select "input#cart_manifest[name=?]", "cart[manifest]"

      assert_select "input#cart_session[name=?]", "cart[session]"

      assert_select "input#cart_qty[name=?]", "cart[qty]"

      assert_select "input#cart_price[name=?]", "cart[price]"
    end
  end
end
