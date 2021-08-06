class User < ApplicationRecord
    # has_many :hotels, dependent: :destroy
    # has_many :reviews, dependent: :destroy
    has_many :hotel_reviews, dependent: :destroy
    has_many :reviews, dependent: :destroy
    # has_many :favourite_hotel, dependent: :destroy
    has_many :favourite_hotel, dependent: :destroy

    validates :email, presence: true
    validates :name, presence: true, uniqueness: true
end
