class AddIndexToGradenumberAndGroupnumber < ActiveRecord::Migration[6.0]
  def change
    add_index :grades, :grade_number, unique: true
    add_index :groups, :group_number, unique: true
  end
end
