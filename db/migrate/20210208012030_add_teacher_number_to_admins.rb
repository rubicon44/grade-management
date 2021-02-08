class AddTeacherNumberToAdmins < ActiveRecord::Migration[6.0]
  def change
    add_column :admins, :teacher_number, :string,  default: "",   null: false
    add_column :admins, :grade_admin,    :boolean, default: false
    add_column :admins, :group_admin,    :boolean, default: false
  end
end
