class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :manifest
      t.string :session
      t.integer :qty
      t.decimal :price
      t.timestamp :date_created

      t.timestamps null: false
    end
  end
end
