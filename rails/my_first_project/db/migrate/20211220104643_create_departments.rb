class CreateDepartments < ActiveRecord::Migration[6.1]
  def change
    create_table :departments do |t|
      t.string :deptname
      t.string :hodname
      t.text :location

      t.timestamps
    end
  end
end
