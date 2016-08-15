class CreateInterests < ActiveRecord::Migration
  def change
  	 create_table :interests do |t|
      t.string :interest, presence: true
      
      

      t.timestamps null: false
    end
  end
end
