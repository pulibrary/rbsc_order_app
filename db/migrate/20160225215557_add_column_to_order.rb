class AddColumnToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :rush, :boolean
  end
end
