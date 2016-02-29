json.array!(@orders) do |order|
  json.extract! order, :id, :id, :submitted, :last_update, :memo, :shipping_fname, :shipping_lname, :shipping_org, :shipping_address1, :shipping_address2, :shipping_city, :shipping_postal_code, :shipping_country, :shipping_phone, :shipping_email, :payment_fname, :payment_lname, :payment_org, :payment_address1, :payment_address2, :payment_city, :payment_postal_code, :payment_country, :payment_phone, :payment_email, :shipping_method, :shipping_cost, :shipping_cost, :patron_netid, :patron_aeonid, :gateway_confirm_num, :agree_to_terms, :amt_paid, :amt_paid, :amt_due, :amt_due, :discount_percent, :patron_ip_address, :status_id, :staff_id
  json.url order_url(order, format: :json)
end
