class CreateJoins < ActiveRecord::Migration[6.1]

  def change
    create_table :joins do |t|
      t.belongs_to :department
      t.belongs_to :staffs
      t.timestamps
    end
  end

end
