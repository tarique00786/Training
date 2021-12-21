class CreateStudents < ActiveRecord::Migration[6.1]

  def change
    create_table :students do |t|
      t.belongs_to :department
      t.string :name
      t.integer :joined_year

      t.timestamps
    end
  end

end
