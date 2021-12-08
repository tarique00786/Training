class CreateAccounts < ActiveRecord::Migration[6.1]

  def change
    create_table :accounts do |t|
      t.belongs_to :supplier, foreign_key: true
      t.string :acoount_number
      t.timestamps
    end
  end

end
