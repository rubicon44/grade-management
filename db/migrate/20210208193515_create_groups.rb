class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :grade_id
      t.string :group_number, null: false

      t.timestamps
    end
  end
end
