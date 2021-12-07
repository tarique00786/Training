class AddColumnToSubjects < ActiveRecord::Migration[6.1]

  def change
    add_column(:subjects, :author, :text)  
  end

end
