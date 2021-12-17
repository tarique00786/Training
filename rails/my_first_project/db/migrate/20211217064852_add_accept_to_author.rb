class AddAcceptToAuthor < ActiveRecord::Migration[6.1]

  def change
    add_column :authors, :accept, :boolean
  end
  
end
