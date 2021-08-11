class Review < ApplicationRecord
  belongs_to :user
  # has_one :hotel
  validates :title, presence: true, length: { minimum: 4, maximum: 240 }

end
