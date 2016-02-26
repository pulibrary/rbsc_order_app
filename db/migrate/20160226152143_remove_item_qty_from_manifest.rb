class RemoveItemQtyFromManifest < ActiveRecord::Migration
  def change
    remove_column :manifests, :item_qty, :integer
  end
end
