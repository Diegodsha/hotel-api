class Hotel < ApplicationRecord
    # has_many :hotel_reviews, dependent: :destroy
    has_many :reviews, dependent: :destroy
    has_many :users, through: :favourite_hotel, dependent: :destroy, foreign_key: :user_id

    validates :name, presence: true, length: { minimum: 3 }
    validates :description, presence: true, length: { minimum: 3 }
    validates :services, presence: true, length: { minimum: 3 }
    validates :img_url, presence: true
    validates :price_nigth, presence: true

    def avg_score
        reviews.average(:score).round(2).to_f 
      end
      
end
