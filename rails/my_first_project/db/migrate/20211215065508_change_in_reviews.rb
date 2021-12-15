class ChangeInReviews < ActiveRecord::Migration[6.1]

  def change
    change_table(:reviews) do |t|
      t.belongs_to :author
    end  
  end

end
