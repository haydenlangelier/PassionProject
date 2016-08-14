class CreateFriends < ActiveRecord::Migration
  def change
  	 create_table :friends do |t|
       t.integer :user_id, :presence => true
      
    end
  end
end
