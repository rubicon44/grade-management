class AddTeacherNumberToTeachers < ActiveRecord::Migration[6.0]
  def change
    add_column :teachers, :teacher_number, :string,  default: "",   null: false
    add_column :teachers, :grade_admin,    :boolean, default: false
    add_column :teachers, :group_admin,    :boolean, default: false
  end
end
