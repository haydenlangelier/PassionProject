class PersonInterest < ActiveRecord::Base
  belongs_to :interest
  belongs_to :person, :polymorphic => true

end
