class Profile < ApplicationRecord
  has_many :comments
  validates :firstName, presence: true, length: {minimum:2}
  validates :lastName, presence: true, length: {minimum:2}
  validates :password, presence: true, length: {minimum:2}
end
