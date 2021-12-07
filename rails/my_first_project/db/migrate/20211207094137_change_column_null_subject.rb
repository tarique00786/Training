class ChangeColumnNullSubject < ActiveRecord::Migration[6.1]

  def change
    change_column_null(:subjects, :author, false)
  end
  
end
