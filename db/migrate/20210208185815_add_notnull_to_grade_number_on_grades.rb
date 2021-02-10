class AddNotnullToGradeNumberOnGrades < ActiveRecord::Migration[6.0]
  def change
    change_column :grades, :grade_number, :string, null: false
  end
end
