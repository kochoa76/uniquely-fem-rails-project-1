class User < ApplicationRecord
  has_many :reviews
  has_many :companies, :through=> :reviews
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :email, presence: true
  validates :email, uniqueness: true
  before_save :set_anonymous_username

  has_secure_password

  def set_anonymous_username
    username = "anonymous#{User.last.id + 1}" if username
  end 
end
