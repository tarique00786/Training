class JoinSubjectsPages < ActiveRecord::Migration[6.1]

  def change
    create_join_table(:subjects, :pages)
  end

end
