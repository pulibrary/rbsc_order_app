require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :id => "",
      :memo => "MyText",
      :shipping_fname => "MyString",
      :shipping_lname => "MyString",
      :shipping_org => "MyString",
      :shipping_address1 => "MyString",
      :shipping_address2 => "MyString",
      :shipping_city => "MyString",
      :shipping_postal_code => "MyString",
      :shipping_country => "MyString",
      :shipping_phone => "MyString",
      :shipping_email => "MyString",
      :payment_fname => "MyString",
      :payment_lname => "MyString",
      :payment_org => "MyString",
      :payment_address1 => "MyString",
      :payment_address2 => "MyString",
      :payment_city => "MyString",
      :payment_postal_code => "MyString",
      :payment_country => "MyString",
      :payment_phone => "MyString",
      :payment_email => "MyString",
      :shipping_method => "MyString",
      :shipping_cost => "",
      :shipping_cost => "",
      :patron_netid => "MyString",
      :patron_aeonid => "MyString",
      :gateway_confirm_num => "MyString",
      :agree_to_terms => false,
      :amt_paid => "",
      :amt_paid => "",
      :amt_due => "",
      :amt_due => "",
      :discount_percent => 1,
      :patron_ip_address => "MyString",
      :status => nil,
      :staff => nil
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input#order_id[name=?]", "order[id]"

      assert_select "textarea#order_memo[name=?]", "order[memo]"

      assert_select "input#order_shipping_fname[name=?]", "order[shipping_fname]"

      assert_select "input#order_shipping_lname[name=?]", "order[shipping_lname]"

      assert_select "input#order_shipping_org[name=?]", "order[shipping_org]"

      assert_select "input#order_shipping_address1[name=?]", "order[shipping_address1]"

      assert_select "input#order_shipping_address2[name=?]", "order[shipping_address2]"

      assert_select "input#order_shipping_city[name=?]", "order[shipping_city]"

      assert_select "input#order_shipping_postal_code[name=?]", "order[shipping_postal_code]"

      assert_select "input#order_shipping_country[name=?]", "order[shipping_country]"

      assert_select "input#order_shipping_phone[name=?]", "order[shipping_phone]"

      assert_select "input#order_shipping_email[name=?]", "order[shipping_email]"

      assert_select "input#order_payment_fname[name=?]", "order[payment_fname]"

      assert_select "input#order_payment_lname[name=?]", "order[payment_lname]"

      assert_select "input#order_payment_org[name=?]", "order[payment_org]"

      assert_select "input#order_payment_address1[name=?]", "order[payment_address1]"

      assert_select "input#order_payment_address2[name=?]", "order[payment_address2]"

      assert_select "input#order_payment_city[name=?]", "order[payment_city]"

      assert_select "input#order_payment_postal_code[name=?]", "order[payment_postal_code]"

      assert_select "input#order_payment_country[name=?]", "order[payment_country]"

      assert_select "input#order_payment_phone[name=?]", "order[payment_phone]"

      assert_select "input#order_payment_email[name=?]", "order[payment_email]"

      assert_select "input#order_shipping_method[name=?]", "order[shipping_method]"

      assert_select "input#order_shipping_cost[name=?]", "order[shipping_cost]"

      assert_select "input#order_shipping_cost[name=?]", "order[shipping_cost]"

      assert_select "input#order_patron_netid[name=?]", "order[patron_netid]"

      assert_select "input#order_patron_aeonid[name=?]", "order[patron_aeonid]"

      assert_select "input#order_gateway_confirm_num[name=?]", "order[gateway_confirm_num]"

      assert_select "input#order_agree_to_terms[name=?]", "order[agree_to_terms]"

      assert_select "input#order_amt_paid[name=?]", "order[amt_paid]"

      assert_select "input#order_amt_paid[name=?]", "order[amt_paid]"

      assert_select "input#order_amt_due[name=?]", "order[amt_due]"

      assert_select "input#order_amt_due[name=?]", "order[amt_due]"

      assert_select "input#order_discount_percent[name=?]", "order[discount_percent]"

      assert_select "input#order_patron_ip_address[name=?]", "order[patron_ip_address]"

      assert_select "input#order_status_id[name=?]", "order[status_id]"

      assert_select "input#order_staff_id[name=?]", "order[staff_id]"
    end
  end
end
