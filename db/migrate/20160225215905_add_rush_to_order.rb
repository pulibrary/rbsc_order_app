class AddRushToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :accesscode, :string
  end
end
