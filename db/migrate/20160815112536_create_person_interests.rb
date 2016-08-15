class CreatePersonInterests < ActiveRecord::Migration
  def change
  	t.integer :user_id
  	t.integer :interest_id
  end
end
