class CreatePersonInterests < ActiveRecord::Migration
  def change
    create_table :person_interests do |t|

      t.integer :person_id
      t.integer :interest_id
      t.integer :person_type
    end
  end
end
