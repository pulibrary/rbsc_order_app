require 'rails_helper'

RSpec.describe "order_histories/index", type: :view do
  before(:each) do
    assign(:order_histories, [
      OrderHistory.create!(
        :id => "",
        :order => nil,
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
      ),
      OrderHistory.create!(
        :id => "",
        :order => nil,
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
      )
    ])
  end

  it "renders a list of order_histories" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Shipping Fname".to_s, :count => 2
    assert_select "tr>td", :text => "Shipping Lname".to_s, :count => 2
    assert_select "tr>td", :text => "Shipping Org".to_s, :count => 2
    assert_select "tr>td", :text => "Shipping Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Shipping Address2".to_s, :count => 2
    assert_select "tr>td", :text => "Shipping City".to_s, :count => 2
    assert_select "tr>td", :text => "Shipping Postal Code".to_s, :count => 2
    assert_select "tr>td", :text => "Shipping Country".to_s, :count => 2
    assert_select "tr>td", :text => "Shipping Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Shipping Email".to_s, :count => 2
    assert_select "tr>td", :text => "Payment Fname".to_s, :count => 2
    assert_select "tr>td", :text => "Payment Lname".to_s, :count => 2
    assert_select "tr>td", :text => "Payment Org".to_s, :count => 2
    assert_select "tr>td", :text => "Payment Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Payment Address2".to_s, :count => 2
    assert_select "tr>td", :text => "Payment City".to_s, :count => 2
    assert_select "tr>td", :text => "Payment Postal Code".to_s, :count => 2
    assert_select "tr>td", :text => "Payment Country".to_s, :count => 2
    assert_select "tr>td", :text => "Payment Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Payment Email".to_s, :count => 2
    assert_select "tr>td", :text => "Shipping Method".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Patron Netid".to_s, :count => 2
    assert_select "tr>td", :text => "Patron Aeonid".to_s, :count => 2
    assert_select "tr>td", :text => "Gateway Confirm Num".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Patron Ip Address".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
