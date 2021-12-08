class CreateAccountHistories < ActiveRecord::Migration[6.1]

  def change
    create_table :account_histories do |t|
      t.belongs_to :account, foreign_key: true
      t.integer :credit_rating
      t.timestamps
    end
  end

end
