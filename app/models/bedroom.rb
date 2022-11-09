class Bedroom < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :rents, dependent: :destroy
  validates :photo, presence: true
end
