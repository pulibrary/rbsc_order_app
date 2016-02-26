require 'rails_helper'

RSpec.describe "carts/show", type: :view do
  before(:each) do
    @cart = assign(:cart, Cart.create!(
      :manifest => 1,
      :session => "Session",
      :qty => 2,
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Session/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
  end
end
