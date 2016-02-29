class CreateJoinTableManifestOrder < ActiveRecord::Migration
  def change
    create_join_table :manifests, :orders do |t|
      # t.index [:manifest_id, :order_id]
      # t.index [:order_id, :manifest_id]
    end
  end
end
