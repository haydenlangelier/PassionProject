class CreateUsersInterests < ActiveRecord::Migration
  def change
  	 create_table :users_interests do |t|
      t.integer :interest_id, :presence => true
      t.integer :user_id, :presence => true
    end
  end
end
