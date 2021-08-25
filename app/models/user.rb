class User < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :favourite_hotel, dependent: :destroy
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :name, presence: true, uniqueness: true
end
