class CreatePages < ActiveRecord::Migration[6.1]
  def change
    create_table :pages do |t|
      t.string :name
      t.string :permalik
      t.integer :postion
      t.boolean :visible
      t.text :content

      t.timestamps
    end
  end
end
