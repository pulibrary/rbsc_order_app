class CreateJoinTableManifestOrder < ActiveRecord::Migration
  def change
    create_join_table :manifests, :orders do |t|
      # t.index [:manifest_id, :order_id]
      # t.index [:order_id, :manifest_id]
      t.integer :qty
      t.decimal :price
      t.integer :approved_by
      t.timestamp :approved_on
      t.timestamp :date_created
    end
  end
end
