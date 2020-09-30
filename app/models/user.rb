class User < ApplicationRecord
  has_secure_password

  has_many :tasks
  has_many :events
  has_many :reservations
  has_many :favorites

  validates :name, :username, presence: true
  validates :username, uniqueness: true
end
