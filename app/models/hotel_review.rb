class HotelReview < ApplicationRecord
  belongs_to :hotel
  belongs_to :review
end
