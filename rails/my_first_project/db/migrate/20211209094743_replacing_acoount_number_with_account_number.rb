class ReplacingAcoountNumberWithAccountNumber < ActiveRecord::Migration[6.1]

  def change
    rename_column(:accounts, :acoount_number, :account_number)  
  end

end
