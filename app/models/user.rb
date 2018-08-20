class User < ApplicationRecord
  has_many :reviews
  has_many :companies, :through=> :reviews
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :email, presence: true
  validates :email, uniqueness: true
  # before_create :set_anonymous_username
  # helper_method :set_anonymous_username
  has_secure_password
end 

#   def set_anonymous_username
#     @user.username = "anonymous#{User.last.id + 1}" if @user.username.nil?
#   end
# end
