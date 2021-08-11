class HotelSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :services, :img_url, :price_nigth, :avg_score

  has_many :reviews
end
