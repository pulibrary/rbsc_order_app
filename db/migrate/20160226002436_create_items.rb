class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :label
      t.string :url
      t.string :uri

      t.timestamps null: false
    end
  end
end
