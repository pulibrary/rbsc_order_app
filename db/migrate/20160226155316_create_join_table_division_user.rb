class CreateJoinTableDivisionUser < ActiveRecord::Migration
  def change
    create_join_table :divisions, :users do |t|
      # t.index [:division_id, :user_id]
      # t.index [:user_id, :division_id]
      t.boolean :can_approve
    end
  end
end
