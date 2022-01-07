class AddAvatarToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :avatar, :string
  end
end
