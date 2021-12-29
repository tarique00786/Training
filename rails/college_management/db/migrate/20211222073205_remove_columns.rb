class RemoveColumns < ActiveRecord::Migration[6.1]

  def change
    remove_column :departments, :students_count
    remove_column :staffs, :departments_count
  end
end
