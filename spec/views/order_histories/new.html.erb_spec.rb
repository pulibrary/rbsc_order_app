require 'rails_helper'

RSpec.describe "order_histories/new", type: :view do
  before(:each) do
    assign(:order_history, OrderHistory.new(
      :id => "",
      :order => nil,
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

  it "renders new order_history form" do
    render

    assert_select "form[action=?][method=?]", order_histories_path, "post" do

      assert_select "input#order_history_id[name=?]", "order_history[id]"

      assert_select "input#order_history_order_id[name=?]", "order_history[order_id]"

      assert_select "textarea#order_history_memo[name=?]", "order_history[memo]"

      assert_select "input#order_history_shipping_fname[name=?]", "order_history[shipping_fname]"

      assert_select "input#order_history_shipping_lname[name=?]", "order_history[shipping_lname]"

      assert_select "input#order_history_shipping_org[name=?]", "order_history[shipping_org]"

      assert_select "input#order_history_shipping_address1[name=?]", "order_history[shipping_address1]"

      assert_select "input#order_history_shipping_address2[name=?]", "order_history[shipping_address2]"

      assert_select "input#order_history_shipping_city[name=?]", "order_history[shipping_city]"

      assert_select "input#order_history_shipping_postal_code[name=?]", "order_history[shipping_postal_code]"

      assert_select "input#order_history_shipping_country[name=?]", "order_history[shipping_country]"

      assert_select "input#order_history_shipping_phone[name=?]", "order_history[shipping_phone]"

      assert_select "input#order_history_shipping_email[name=?]", "order_history[shipping_email]"

      assert_select "input#order_history_payment_fname[name=?]", "order_history[payment_fname]"

      assert_select "input#order_history_payment_lname[name=?]", "order_history[payment_lname]"

      assert_select "input#order_history_payment_org[name=?]", "order_history[payment_org]"

      assert_select "input#order_history_payment_address1[name=?]", "order_history[payment_address1]"

      assert_select "input#order_history_payment_address2[name=?]", "order_history[payment_address2]"

      assert_select "input#order_history_payment_city[name=?]", "order_history[payment_city]"

      assert_select "input#order_history_payment_postal_code[name=?]", "order_history[payment_postal_code]"

      assert_select "input#order_history_payment_country[name=?]", "order_history[payment_country]"

      assert_select "input#order_history_payment_phone[name=?]", "order_history[payment_phone]"

      assert_select "input#order_history_payment_email[name=?]", "order_history[payment_email]"

      assert_select "input#order_history_shipping_method[name=?]", "order_history[shipping_method]"

      assert_select "input#order_history_shipping_cost[name=?]", "order_history[shipping_cost]"

      assert_select "input#order_history_shipping_cost[name=?]", "order_history[shipping_cost]"

      assert_select "input#order_history_patron_netid[name=?]", "order_history[patron_netid]"

      assert_select "input#order_history_patron_aeonid[name=?]", "order_history[patron_aeonid]"

      assert_select "input#order_history_gateway_confirm_num[name=?]", "order_history[gateway_confirm_num]"

      assert_select "input#order_history_agree_to_terms[name=?]", "order_history[agree_to_terms]"

      assert_select "input#order_history_amt_paid[name=?]", "order_history[amt_paid]"

      assert_select "input#order_history_amt_paid[name=?]", "order_history[amt_paid]"

      assert_select "input#order_history_amt_due[name=?]", "order_history[amt_due]"

      assert_select "input#order_history_amt_due[name=?]", "order_history[amt_due]"

      assert_select "input#order_history_discount_percent[name=?]", "order_history[discount_percent]"

      assert_select "input#order_history_patron_ip_address[name=?]", "order_history[patron_ip_address]"

      assert_select "input#order_history_status_id[name=?]", "order_history[status_id]"

      assert_select "input#order_history_staff_id[name=?]", "order_history[staff_id]"
    end
  end
end
