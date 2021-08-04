class Hotel < ApplicationRecord
    has_many :reviews, dependent: :destroy

    validates :name, presence: true, length: { minimum: 3 }
    validates :description, presence: true, length: { minimum: 3, maximum: 70 }
    validates :services, presence: true, length: { minimum: 3 }
    validates :img_url, presence: true
    validates :price_nigth, presence: true

end
