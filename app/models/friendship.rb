class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: 'User'

  def self.new_lookup(email_address)
    user = User.find_by(email: email_address)
  end
end
