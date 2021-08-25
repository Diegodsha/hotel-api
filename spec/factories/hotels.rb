FactoryBot.define do
  factory :hotel do
    name { Faker::Lorem.characters(number: 10) }
    price_nigth { Faker::Number.number(digits: 4) }
    description { Faker::Lorem.paragraph_by_chars(number: 65) }
    services { Faker::Lorem.words(number: 4) }
    img_url { Faker::Internet.url }
  end
end
