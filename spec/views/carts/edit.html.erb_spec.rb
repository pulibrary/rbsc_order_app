require 'rails_helper'

RSpec.describe "carts/edit", type: :view do
  before(:each) do
    @cart = assign(:cart, Cart.create!(
      :manifest => 1,
      :session => "MyString",
      :qty => 1,
      :price => "9.99"
    ))
  end

  it "renders the edit cart form" do
    render

    assert_select "form[action=?][method=?]", cart_path(@cart), "post" do

      assert_select "input#cart_manifest[name=?]", "cart[manifest]"

      assert_select "input#cart_session[name=?]", "cart[session]"

      assert_select "input#cart_qty[name=?]", "cart[qty]"

      assert_select "input#cart_price[name=?]", "cart[price]"
    end
  end
end
