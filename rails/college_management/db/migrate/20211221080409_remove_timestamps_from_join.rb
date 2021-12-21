class RemoveTimestampsFromJoin < ActiveRecord::Migration[6.1]

  def change
    remove_timestamps(:joins)  
  end

end
