class AddQuantityToManifest < ActiveRecord::Migration
  def change
    add_column :manifests, :item_qty, :integer
  end
end
