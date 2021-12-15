class AddDetailsToBooks < ActiveRecord::Migration[6.1]

  def change
    add_column :books, :price, :numeric
  end
  
end
