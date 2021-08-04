class Review < ApplicationRecord
  belongs_to :hotel
  validates :title, presence: true, length: { minimum: 3 }

end
