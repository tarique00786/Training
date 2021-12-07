class RemoveForeignKeyFromPages < ActiveRecord::Migration[6.1]

  def change
    remove_foreign_key :pages, column: :subject_id
  end

end
