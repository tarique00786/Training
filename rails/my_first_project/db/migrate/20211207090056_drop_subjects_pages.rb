class DropSubjectsPages < ActiveRecord::Migration[6.1]

  def change
    drop_join_table(:subjects, :pages)  
  end

end
