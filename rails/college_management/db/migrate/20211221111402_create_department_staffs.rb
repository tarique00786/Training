class CreateDepartmentStaffs < ActiveRecord::Migration[6.1]
  def change
    create_table :department_staffs do |t|
      t.belongs_to :department
      t.belongs_to :staff
      t.timestamps
    end
  end
end
