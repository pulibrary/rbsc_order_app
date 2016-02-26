class CreateFormats < ActiveRecord::Migration
  def change
    create_table :formats do |t|
      t.string :media
      t.string :size
      t.string :filetype
      t.string :fund_code

      t.timestamps null: false
    end
  end
end
