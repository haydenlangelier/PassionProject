class Interest < ActiveRecord::Base
  has_many :users, :through => :users_interests
end
