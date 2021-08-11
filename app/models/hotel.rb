class Hotel < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true, length: { minimum: 3 }
  validates :description, presence: true, length: { minimum: 3 }
  validates :services, presence: true, length: { minimum: 3 }
  validates :img_url, presence: true
  validates :price_nigth, presence: true

  def avg_score
    return 0 unless reviews.count.positive?

    reviews.average(:score).round(2).to_f
  end
end
