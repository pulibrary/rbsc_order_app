class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.timestamp :submitted
      t.timestamp :last_update
      t.text :memo
      t.string :shipping_fname
      t.string :shipping_lname
      t.string :shipping_org
      t.string :shipping_address1
      t.string :shipping_address2
      t.string :shipping_city
      t.string :shipping_postal_code
      t.string :shipping_country
      t.string :shipping_phone
      t.string :shipping_email
      t.string :payment_fname
      t.string :payment_lname
      t.string :payment_org
      t.string :payment_address1
      t.string :payment_address2
      t.string :payment_city
      t.string :payment_postal_code
      t.string :payment_country
      t.string :payment_phone
      t.string :payment_email
      t.string :shipping_method
      t.decimal :shipping_cost, precision: 8, scale: 2
      t.string :patron_netid
      t.string :patron_aeonid
      t.string :gateway_confirm_num
      t.boolean :agree_to_terms
      t.decimal :amt_paid, precision: 8, scale: 2
      t.decimal :amt_due, precision: 8, scale: 2
      t.integer :discount_percent
      t.string :patron_ip_address
      t.integer :status, index: true
      #t.references :status, index: true, foreign_key: true
      #t.references :staff, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
