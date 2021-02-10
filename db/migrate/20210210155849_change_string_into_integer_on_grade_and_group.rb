class ChangeStringIntoIntegerOnGradeAndGroup < ActiveRecord::Migration[6.0]
  def change
    change_column :grades, :grade_number, :integer, null: false
    change_column :groups, :grade_id,     :integer
  end
end
