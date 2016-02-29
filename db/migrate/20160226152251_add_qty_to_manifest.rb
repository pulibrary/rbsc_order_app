class AddQtyToManifest < ActiveRecord::Migration
  def change
    add_column :manifests, :qty, :integer
  end
end
