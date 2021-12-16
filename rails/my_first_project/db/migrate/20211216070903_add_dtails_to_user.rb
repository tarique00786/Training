class AddDtailsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :mobileno, :integer
  end
end
