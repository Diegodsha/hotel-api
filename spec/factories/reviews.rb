FactoryBot.define do
  factory :review do
    title { Faker::Lorem.word }
    hotel_id { nil }
  end
end
