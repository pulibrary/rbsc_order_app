class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions do |t|
      t.string :label

      t.timestamps null: false
    end
  end
end
