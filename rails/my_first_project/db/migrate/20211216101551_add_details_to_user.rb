class AddDetailsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :age, :string
  end
end
