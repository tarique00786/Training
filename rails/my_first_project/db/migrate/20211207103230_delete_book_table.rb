class DeleteBookTable < ActiveRecord::Migration[6.1]

  def change
    drop_table(:book_tables)
  end

end
