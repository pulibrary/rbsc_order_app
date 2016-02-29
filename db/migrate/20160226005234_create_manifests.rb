class CreateManifests < ActiveRecord::Migration
  def change
    create_table :manifests do |t|
      t.string :call_num
      t.string :label
      t.text :memo
      t.string :url
      t.string :uri
      t.integer :item_qty
      t.integer :division
      t.integer :format
      t.integer :permissions
      t.integer :start_item
      t.integer :end_item

      t.timestamps null: false
    end
  end
end
