class Interest < ActiveRecord::Base
  has_many :person_interests
  has_many :people, :through => :person_interests
end
