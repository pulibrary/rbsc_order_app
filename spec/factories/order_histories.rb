FactoryGirl.define do
  factory :order_history do
    id ""
    order nil
    submitted "2016-02-25 16:35:43"
    last_update "2016-02-25 16:35:43"
    memo "MyText"
    shipping_fname "MyString"
    shipping_lname "MyString"
    shipping_org "MyString"
    shipping_address1 "MyString"
    shipping_address2 "MyString"
    shipping_city "MyString"
    shipping_postal_code "MyString"
    shipping_country "MyString"
    shipping_phone "MyString"
    shipping_email "MyString"
    payment_fname "MyString"
    payment_lname "MyString"
    payment_org "MyString"
    payment_address1 "MyString"
    payment_address2 "MyString"
    payment_city "MyString"
    payment_postal_code "MyString"
    payment_country "MyString"
    payment_phone "MyString"
    payment_email "MyString"
    shipping_method "MyString"
    shipping_cost ""
    shipping_cost ""
    patron_netid "MyString"
    patron_aeonid "MyString"
    gateway_confirm_num "MyString"
    agree_to_terms false
    amt_paid ""
    amt_paid ""
    amt_due ""
    amt_due ""
    discount_percent 1
    patron_ip_address "MyString"
    status nil
    staff nil
  end
end
