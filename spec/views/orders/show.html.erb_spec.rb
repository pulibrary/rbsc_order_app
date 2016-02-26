require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :id => "",
      :memo => "MyText",
      :shipping_fname => "Shipping Fname",
      :shipping_lname => "Shipping Lname",
      :shipping_org => "Shipping Org",
      :shipping_address1 => "Shipping Address1",
      :shipping_address2 => "Shipping Address2",
      :shipping_city => "Shipping City",
      :shipping_postal_code => "Shipping Postal Code",
      :shipping_country => "Shipping Country",
      :shipping_phone => "Shipping Phone",
      :shipping_email => "Shipping Email",
      :payment_fname => "Payment Fname",
      :payment_lname => "Payment Lname",
      :payment_org => "Payment Org",
      :payment_address1 => "Payment Address1",
      :payment_address2 => "Payment Address2",
      :payment_city => "Payment City",
      :payment_postal_code => "Payment Postal Code",
      :payment_country => "Payment Country",
      :payment_phone => "Payment Phone",
      :payment_email => "Payment Email",
      :shipping_method => "Shipping Method",
      :shipping_cost => "",
      :shipping_cost => "",
      :patron_netid => "Patron Netid",
      :patron_aeonid => "Patron Aeonid",
      :gateway_confirm_num => "Gateway Confirm Num",
      :agree_to_terms => false,
      :amt_paid => "",
      :amt_paid => "",
      :amt_due => "",
      :amt_due => "",
      :discount_percent => 1,
      :patron_ip_address => "Patron Ip Address",
      :status => nil,
      :staff => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Shipping Fname/)
    expect(rendered).to match(/Shipping Lname/)
    expect(rendered).to match(/Shipping Org/)
    expect(rendered).to match(/Shipping Address1/)
    expect(rendered).to match(/Shipping Address2/)
    expect(rendered).to match(/Shipping City/)
    expect(rendered).to match(/Shipping Postal Code/)
    expect(rendered).to match(/Shipping Country/)
    expect(rendered).to match(/Shipping Phone/)
    expect(rendered).to match(/Shipping Email/)
    expect(rendered).to match(/Payment Fname/)
    expect(rendered).to match(/Payment Lname/)
    expect(rendered).to match(/Payment Org/)
    expect(rendered).to match(/Payment Address1/)
    expect(rendered).to match(/Payment Address2/)
    expect(rendered).to match(/Payment City/)
    expect(rendered).to match(/Payment Postal Code/)
    expect(rendered).to match(/Payment Country/)
    expect(rendered).to match(/Payment Phone/)
    expect(rendered).to match(/Payment Email/)
    expect(rendered).to match(/Shipping Method/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Patron Netid/)
    expect(rendered).to match(/Patron Aeonid/)
    expect(rendered).to match(/Gateway Confirm Num/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Patron Ip Address/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
