class AddManifestToItem < ActiveRecord::Migration
  def change
    add_column :items, :manifest, :integer
  end
end
