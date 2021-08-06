# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

hotels = Hotel.create([
    {
      name:"Grand Fiesta Americana Coral Beach Cancun",
      description:"This luxury hotel rises majestically in the heart of Cancun’s entertainment district. The 602-rooms present with all the class of a fine European hotel, combined with the warm and gracious service that has made us famous. Our full-service spa, invite you to enjoy the endless relaxation and adventure. Fine cuisine is available in our nine restaurants and bars. Guests may also use the large outdoor pool along with a children’s club.",
      services:"Free parking,Pool,Free internet,Fitness center,Bar",
      price_nigth:465,
      img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/3b/56/e4/hero-shot-at-night.jpg?w=1200&h=-1&s=1"
},
{
    name:"Hyatt Zilara Cancun",
    description:"Welcome to Hyatt Zilara Cancun, an adults-only, all-inclusive resort (min. age 18). Prominently located on the widest stretch of beach in the heart of Cancun's Hotel Zone, Hyatt Zilara Cancun is an adults-only, all-suite, all inclusive resort where guests experience traditional Mexican warmth in an intimate yet casual setting.Our resort features spacious suites with breathtaking views of the Caribbean and offers world-class dining, an impressive array of upscale amenities, outstanding service from an attentive and thoughtful staff, and spectacular grounds and facilities.Hyatt Zilara Cancun offers a myriad of activities and conveniences including, sophisticated culinary options at six gourmet restaurants, rejuvenating treatments and services at The Spa- Cancun's only ocean view spa - wine and spirits tastings, enhanced pool and beach butler service and more.",
    services:"Free parking,Pool,Free internet,Fitness center,Free breakfast",
    price_nigth:543,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/47/f2/ef/hyatt-zilara-cancun.jpg?w=1200&h=-1&s=1"
},
{
    name:"The Grand At Moon Palace",
    description:"Located on Cancun's tranquil south shore, ten minutes from the airport, this luxury all-inclusive resort offers more than 1,000 accommodations offering double whirlpool tubs, 24-hour room service, top-shelf drinks, free WIFI, CHI-branded amenities, aromatherapy and pillow menus, and complimentary calls to Continental US, Canada, and landlines in Mexico. Over-the-top amenities are included for everyone, including the state-of-the-art Playroom, complete with bumper cars; a huge variety of upscale dining options and bars, not to mention world-class entertainment and nightlife. With the added indulgences of an Awe Spa® for hard-core pampering, an incredible Bowling Alley, and the Jack Nicklaus Signature Golf Course within nearby reach, The Grand at Moon Palace Cancun has endless options for wholehearted enjoyment, and much more.",
    services:"Free parking,Pool,Free internet,Fitness center,Bar",
    price_nigth:635,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/0b/4a/e7/the-grand-at-moon-palace.jpg?w=1200&h=-1&s=1"
}
])

# hotel_reviews = Review.create([
#     {
#         title: 'Great experience',
#         body: 'I love the instalations and the staff',
#         score: 5,
#         hotel: hotels.first
#     },
#     {
#         title: 'Love the food',
#         body: 'The food was delicious',
#         score: 5,
#         hotel: hotels.first
#     },
#     {
#         title: 'It could be better',
#         body: 'My room was not clean when I arrived',
#         score: 2,
#         hotel: hotels.second
#     }
# ])

# p 'seed finish'