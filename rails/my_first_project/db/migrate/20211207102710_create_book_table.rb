class CreateBookTable < ActiveRecord::Migration[6.1]
  def change
    create_table :book_tables do |t|

      t.timestamps
    end
  end
end
