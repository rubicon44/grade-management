class RemoveIndexFromGroupnumberOnGroups < ActiveRecord::Migration[6.0]
  def change
    remove_index :groups, :group_number
  end
end
