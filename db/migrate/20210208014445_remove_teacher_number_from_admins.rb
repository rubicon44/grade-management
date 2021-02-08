class RemoveTeacherNumberFromAdmins < ActiveRecord::Migration[6.0]
  def change
    remove_column :admins, :teacher_number, :string
    remove_column :admins, :grade_admin, :boolean
    remove_column :admins, :group_admin, :boolean
  end
end
