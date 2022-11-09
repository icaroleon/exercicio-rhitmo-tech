class Rent < ApplicationRecord
  belongs_to :user
  belongs_to :bedroom
  validates :user_id, uniqueness: {scope: :bedroom_id}
end
