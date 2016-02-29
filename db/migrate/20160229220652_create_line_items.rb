class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :manifest, index: true, foreign_key: true
      t.references :order, index: true, foreign_key: true
      t.integer :qty
      t.decimal :price
      t.integer :approved_by
      t.timestamp :approved_on
      t.timestamp :date_created
      t.timestamps null: false
    end
  end
end
