class AddAttendanceNumberToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :grade_id,          :string
    add_column :students, :group_id,          :string
    add_column :students, :attendance_number, :string,  default: "", null: false
  end
end
