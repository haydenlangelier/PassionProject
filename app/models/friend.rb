class Friend < ActiveRecord::Base
  # Remember to create a migration!
  # belongs_to :friend, { class_name: 'User' }
  # belongs_to :followed, { class_name: 'User' }
  belongs_to :user
end
