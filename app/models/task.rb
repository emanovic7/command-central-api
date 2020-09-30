class Task < ApplicationRecord
  belongs_to :user

  validates :note, presence: true
  validates_associated :user
end
