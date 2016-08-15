class Friend < ActiveRecord::Base
  belongs_to :user
  has_many :person_interests, :as => :person
  has_many :interests, :through => :person_interests
end
