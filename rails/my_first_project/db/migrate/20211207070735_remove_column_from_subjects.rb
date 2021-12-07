class RemoveColumnFromSubjects < ActiveRecord::Migration[6.1]

  def change
    remove_column(:subjects, :position)  
  end

end
