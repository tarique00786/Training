class ChangColumnTypeInStudent < ActiveRecord::Migration[6.1]

  def change
    remove_column :students, :joined_year, :date
    add_column :students, :admission, :integer
     
  end

end
